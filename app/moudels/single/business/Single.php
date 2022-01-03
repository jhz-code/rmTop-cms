<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/21
 * Time: 2:53 下午
 */


namespace app\moudels\single\business;


use app\rmcore\business\Column;
use app\rmcore\business\ParamsBusiness;
use app\rmcore\inface\RmtopBusiness;
use app\moudels\single\model\Single as SingleModel;
use app\rmcore\model\ParamsModel as SingleParams;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\facade\Db;
use think\Model;

class Single implements RmtopBusiness
{


    static function rmtop_struct_ini($action, $colum_id)
    {
        return  self::get_manage_single_info($colum_id);
    }


    /**
     * @param $colum_id
     * @return array
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     * 后台管理读取单页数据
     */
   static  function get_manage_single_info($colum_id): array
   {
        $info = SingleModel::where(['col_id'=>$colum_id])->find();
        if($info){
            SingleModel::where(['col_id'=>$colum_id])->update(['views'=>Db::raw('views+1')]);
            return array_merge(ParamsBusiness::getParamsValue($info['col_id'],$info['id']),$info->toArray());
        }
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
                return self::get_taglib_single_list($params['col_id'],$params['keyword'],$params['limit']);
            case "info";
                return self::get_single_info($params['col_id'],$params['field']);
            default:
                return  [];
        }
    }


    /**
     * @param $id
     * @param string $filed
     * @return array|false|string[]|Model|null
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function get_single_info($id,string $filed = ""){
        if(!is_numeric($id)){
            $condition = "uqid = '".getIdDeciphering($id)."'";
        }else{
            $condition = "id = ".$id;
        }
        if($filed == "img_lists"){
            $imglist =  SingleModel::where($condition)->value("img_lists");
            return  explode(',',$imglist);
        }else if($filed == 'view_path'){
            //若设置了单页单独模板
            $find  = SingleModel::where($condition)->find();//单独的详情设置模板页面
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
            $info  =  SingleModel::where($condition)->find();
            if($info){
                return array_merge(ParamsBusiness::getParamsValue($info['col_id'],$info['id']),$info->toArray());
            }else{
                return  [];
            }
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
    static function get_taglib_single_list(int $cid, string $filed, string $searchKey, int $limit = 10, string $orderBy ='create_time desc'){
        $list = SingleModel::where(['col_id'=>$cid])->whereLike('title',"%$searchKey%")->field($filed)->order($orderBy)->page(input('page')??1,$limit)->select();
        foreach ($list as $key=>$value){
            $list[$key]['column_title'] = Column::get_column_title_by_id($value['col_id']);
        }
        return $list;
    }


    /**
     * @param string $type
     * @param $data
     * @return Model|SingleModel
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static  function add_edit_single(string $type,$data){
        $data['text'] = $data['editorValue'] ?? "";
        $info =  SingleModel::where(['col_id'=>$data['col_id']])->find();
        if(empty($info)) {
            unset($data['id']);
            $data['uqid'] = getUniqid();
            return  SingleModel::create($data);
        }else{
            //更新额外参数
            $extra_params =  ParamsBusiness::getColumnParams($data['col_id']);
            ParamsBusiness::createSaveParams($data['col_id'],$data['id'],$extra_params,$data);
            $info =   SingleModel::find($data['id']);
            $info->save($data);
            return  $info;
        }
    }


    /**
    根据栏目 ID 删除相关内容
     * @param int $col_id
     * @return bool
     */
    static function delete_single_by_col_id(int $col_id): bool
    {
        return  SingleModel::where(['col_id'=>$col_id])->delete();
    }




}