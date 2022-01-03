<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/21
 * Time: 7:33 下午
 */


namespace app\moudels\message\business;


use app\rmcore\business\Column;
use app\rmcore\inface\RmtopBusiness;
use app\moudels\message\model\Message as MessageModel;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\Model;

class Message implements RmtopBusiness
{

    static function rmtop_struct_ini($action, $colum_id)
    {

        switch ($action){
            case "index":
                return self::get_message_list($colum_id,'',9);
            case "edit";
                return  self::get_message_info(request()->param()['id'],'*');
            default:
                return  [];
        }
        // TODO: Implement rmtop_struct_ini() method.
    }


    /**
     * @param $action
     * @param $params
     * @return array|Model|\think\Paginator|null
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function rmtop_struct_consumer($action, $params)
    {
        // TODO: Implement rmtop_struct_consumer() method.
        switch ($action){
            case "list":
                return self::get_message_list($params['col_id'],$params['keyword'],$params['limit']);
            case "info";
                return self::get_message_info($params['col_id'],$params['field']);
            case "insert";
                return self::insertMessage($params);
            default:
                return  [];
        }
    }


    /**
     * 输出留言信息列表
     * @param int $col_id  //栏目ID
     * @param string $searchKey  //检索标题
     * @param int $count //分页输出数据
     * @return \think\Paginator
     * @throws \think\db\exception\DbException
     */
    static function get_message_list(int $col_id,string  $searchKey,int $count = 10): \think\Paginator
    {
        $where = $col_id?"col_id = $col_id":1;
        if($searchKey){
            return MessageModel::where($where)->whereLike('title',"%$searchKey%")->order('id','desc')->paginate(['list_rows'=>$count,'query' => request()->param()])->each(function (&$item){
                if($item['state'] == 1){
                      $item['state_label'] =  "已阅";
              }else{
                  $item['state_label'] =  "待阅";
              }
            });
        }else{
            return MessageModel::where($where)->order('id','desc')->paginate(['list_rows'=>$count,'query' => request()->param()])->each(function (&$item) {
                if ($item['state'] == 1) {
                    $item['state_label'] = "已阅";
                } else {
                    $item['state_label'] = "待阅";
                }
            });
        }
    }


    /**
     * taglib 标签输出数据
     * @param int $cid 分类ID
     * @param string $filed 输出字段
     * @param string $searchKey 匹配关键词
     * @param int $limit //输出条数
     * @param string $orderBy 排序key
     * @return array|\think\Collection
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function get_taglib_message_list(int $cid, string $filed, string $searchKey, int $limit = 10, string $orderBy ='create_time desc'){
        $list = MessageModel::where(['col_id'=>$cid])->whereLike('title',"%$searchKey%")->field($filed)->order($orderBy)->page(input('page')??1,$limit)->select();
        foreach ($list as $key=>$value){
            $list[$key]['column_title'] = Column::get_column_title_by_id($value['col_id']);
        }
        return $list;
    }


    /**
     * 输出单个留言信息
     * @param int $id
     * @param string $filed
     * @return array|false|mixed|string|string[]|Model|null
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function get_message_info(int $id,string $filed = ''){
        if($filed == "img_lists"){
            $imglist =  MessageModel::where(['id'=>$id])->value("img_lists");
            return  explode(',',$imglist);
        }else if($filed == 'view_path'){
            //若设置了单页单独模板
            $find  = MessageModel::where(['id'=>$id])->find();//单独的详情设置模板页面
            if(isset($find['view_path']) && !empty($find['view_path'])){
                return  $find['view_path'];
            }
            //若设置了栏目单独详情模板
            $column = Column::get_column_by_id($find['col_id']);
            if(isset($column['info_tmp']) && !empty($column['info_tmp'])){
                return $column['info_tmp'];
            }
            return "info";
        }else{
            MessageModel::where(['id'=>$id])->update(['state'=>1]);
            return MessageModel::where(['id'=>$id])->field($filed)->find();
        }
    }


    /**
     * 删除留言信息
     * @param int $id
     * @return bool
     */
    static function delete_message(int $id): bool
    {
        return MessageModel::where(['id'=>$id])->delete();
    }


    /**
    根据栏目 ID 删除相关内容
     * @param int $col_id
     * @return bool
     */
    static function delete_message_by_col_id(int $col_id){
        return  MessageModel::where(['col_id'=>$col_id])->delete();
    }


    /**
     * 录入用户留言
     * @param array $data
     * @return mixed
     */
    static function insertMessage(array $data){
        if(MessageModel::create($data)){
          return  json_encode(['code'=>1,'msg'=>'提交成功']);
        }else{
            return json_encode(['code'=>0,'msg'=>'提交失败']);
        }
    }

}