<?php
// 应用公共文件
use app\rmcore\funcs\TopFuncs;
use app\rmcore\model\SystemRunLog;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\Model;

/**
 * 获取客户端的IP地址
 * @param $type //表示返回类型 0 返回IP地址， 1 返回IPV4地址数字
 */

function get_client_ip($type = 0) {
    $type       =  $type ? 1 : 0;
    static $ip  =   NULL;
    if ($ip !== NULL) return $ip[$type];
    if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $arr    =   explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
        $pos    =   array_search('unknown',$arr);
        if(false !== $pos) unset($arr[$pos]);
        $ip     =   trim($arr[0]);
    }elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
        $ip     =   $_SERVER['HTTP_CLIENT_IP'];
    }elseif (isset($_SERVER['REMOTE_ADDR'])) {
        $ip     =   $_SERVER['REMOTE_ADDR'];
    }
    // IP地址合法验证
    $long = ip2long($ip);
    $ip   = $long ? array($ip, $long) : array('0.0.0.0', 0);
    return $ip[$type];
}



/**数据输出封装
 * @param int $code //返回code
 * @param string $msg //返回消息
 * @param $data //返回数据
 * @param $url //url
 * @return \think\response\Json
 */
function result_json(int $code,string $msg,$data,$url){
    $result =  [
        'code' => $code,
        'msg' => $msg,
        'data'=>$data,
        'url'=>$url??request()->header('Referer')
    ];
    return json($result);
}


/**
 * /**数据输出封装
 * @param string $type
 * @param int $code
 * @param string $msg
 * @param $data
 * @param $url
 * @return mixed;
 */
function out_result(string $type,int $code,string $msg,$data,$url){
    switch ($type){
        case "json":
            $result =  [
                'code' => $code,
                'msg' => $msg,
                'data'=>$data,
                'url'=>$url??request()->header('Referer')
            ];
            return  json($result);
        case "jump":
            return  redirect($url.''??request()->header('Referer'));
        default:
            redirect();
    }
}


/**
 * 内容跳转
 * @param string $state
 * @param string $params
 * @return string
 */
function content_redirect(string $state,string $params): string
{
   if($state == 1){
      return  "/rmtop/success?pam=".$params;
   }else{
       return  "/rmtop/error?pam=".$params;
   }
}


/**
 * @param $model
 * @param $action
 * @param $cid
 * @return string
 * @throws DataNotFoundException
 * @throws DbException
 * @throws ModelNotFoundException
 */
function TopUrl($model,$alias="",$action,$cid,$title=""): string
{
    return \app\rmcore\funcs\TopDispatch::makeRouteUrl($model,$alias,$action,$cid,$title);
}


/**
 * 获取静态地址
 * @return mixed|string
 * @throws DataNotFoundException
 * @throws DbException
 * @throws ModelNotFoundException
 */
function getViewStaticPath(){
    return \app\rmcore\business\Config::get_value_for_enName("view_static_path");
}

function getUniqid(): string
{
   return substr(md5(md5(md5(time() . mt_rand(1,1000000)).uniqid())), 8, 16);
}


/**
 * 对信息id 进行加密
 * @param string $Id
 * @return string
 */
function getIdEncryption(string $Id): string
{
    $base64 = base64_encode($Id);
    return urlencode($base64);
}

/**
 * Id 解密
 * @param string $EncryptionData
 * @return false|string
 */
function getIdDeciphering(string $EncryptionData){
    $data = urldecode($EncryptionData);
    return base64_decode($data);
}


/**
 * 输出预览地址
 * @param  $sid
 * @param int $col_id
 * @param $title
 * @return string
 * @throws DataNotFoundException
 * @throws DbException
 * @throws ModelNotFoundException
 */
function previewUrl($sid, int $col_id, $title): string
{
    return TopFuncs::previewUrl( $sid,$col_id,$title);
}


/**
 *记录系统日志
 * @param $content
 * @return SystemRunLog|Model
 */
function writeSysRunLog($content){
   return TopFuncs::writeSysRunLog($content);
}


/**
 * 推送信息至搜索引擎
 * @param array $Url
 * @return bool|string
 */
function pushSearch(array $Url){
    $return = json_decode(TopFuncs::pushSearch($Url),true);
    $info = implode(',',$Url);
    if($return['success'] == 1){
     return   writeSysRunLog("$info,成功推送至搜索引擎,剩余次数".$return['remain'],);
    }else{
        return   writeSysRunLog("$info,推送至搜索引擎失败,剩余次数".$return['remain'],);
    }
}