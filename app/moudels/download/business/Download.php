<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/21
 * Time: 7:20 下午
 */


namespace app\moudels\download\business;


use app\moudels\download\model\Download as DownloadModel;
use app\rmcore\business\Column;
use app\rmcore\inface\RmtopBusiness;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\facade\Db;

class Download implements RmtopBusiness
{


    /**
     * 初始化构建
     * @param $action
     * @param $colum_id
     * @return array|\think\Model|\think\Paginator|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    static function rmtop_struct_ini($action, $colum_id)
    {
        // TODO: Implement rmtop_struct_ini() method.
        switch ($action){
            case "index":
                return self::get_download_list($colum_id,'',20);
            case "edit";
                return  self::get_download_info(request()->param()['id'],'*');
            default:
                return  [];
        }
    }


    /**
     * 消费信息
     * @param $action
     * @param $params
     * @return array|\think\Paginator
     * @throws DbException
     */
    static function rmtop_struct_consumer($action, $params)
    {
        // TODO: Implement rmtop_struct_consumer() method.
        switch ($action){
            case "list":
                return self::get_download_list($params['col_id'],$params['keyword'],$params['limit']);
            case "info";
                return self::get_download_info($params['col_id'],$params['field']);
            default:
                return  [];
        }
    }


    /**
     * @param string $type //操作类型
     */
    static  function add_edit_download(string $type,$data){
        $data['content'] = $data['editorValue'];
        if($data['imglist']){$data['img_lists'] = implode(',',$data['imglist']);}
        if($type == 'add'){
            $data['uqid'] = getUniqid();
            return  DownloadModel::create($data);
        }else if($type == "edit"){
            $info = DownloadModel::find($data['id']);
            return $info->save($data);
        }else{
            return  false;
        }
    }



    /**
     * @param int $col_id  //栏目ID
     * @param string $searchKey  //检索标题
     * @param int $count //分页输出数据
     * @return \think\Paginator
     * @throws \think\db\exception\DbException
     */
    static function get_download_list(int $col_id,string  $searchKey,int $count = 10): \think\Paginator
    {
        $where = $col_id?"col_id = $col_id":1;
        return DownloadModel::where($where)->whereLike('title',"%$searchKey%")->order('id','desc')->paginate(['list_rows'=>$count,'query' => request()->param()])->each(function (&$item){
            $item['column_title'] = Column::get_column_title_by_id( $item['col_id']);
            $item['url'] = TopUrl(Column::get_column_by_id($item['col_id'])['model'],Column::get_column_by_id($item['col_id'])['en_title'],getIdEncryption($item['uqid']),'',$item['title']);
            return $item;
        });
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
    static function get_taglib_download_list(int $cid, string $filed, string $searchKey, int $limit = 10, string $orderBy ='create_time desc'){
        $list = DownloadModel::where(['col_id'=>$cid])->whereLike('title',"%$searchKey%")->field($filed)->order($orderBy)->page(input('page')??1,$limit)->select();
        foreach ($list as $key=>$value){
            $list[$key]['column_title'] = Column::get_column_title_by_id($value['col_id']);
            $list[$key]['url'] = TopUrl(Column::get_column_by_id($value['col_id'])['model'],Column::get_column_by_id($value['col_id'])['en_title'],getIdEncryption($value['uqid']),$value['title']);
        }
        return $list;
    }


    /**
     * 输出文章信息
     * @param $id
     * @param string $filed
     * @return array|false|mixed|string|string[]|\think\Model|null
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function get_download_info($id,string $filed = ''){
        if(!is_numeric($id)){
            $condition = "uqid = '".getIdDeciphering($id)."'";
        }else{
            $condition = "id = ".$id;
        }
        if($filed == "img_lists"){
            $imglist =  DownloadModel::where($condition)->value("img_lists");
            return  explode(',',$imglist);
        }else if($filed == 'view_path'){
            //若设置了单页单独模板
            $find  = DownloadModel::where($condition)->find();//单独的详情设置模板页面
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
            DownloadModel::where($condition)->update(['views'=>	Db::raw('views+1')]);
            return DownloadModel::where($condition)->field($filed)->find();
        }
    }

    /**
     * 删除文章
     * @param int $id
     * @return bool
     */
    static function delete_download(int $id){
        return DownloadModel::where(['id'=>$id])->delete();
    }


    /**
    根据栏目 ID 删除相关内容
     * @param int $col_id
     * @return bool
     */
    static function delete_download_by_col_id(int $col_id){
        return  DownloadModel::where(['col_id'=>$col_id])->delete();
    }

}