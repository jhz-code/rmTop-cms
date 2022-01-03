<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/31
 * Time: 12:16 上午
 */


namespace app\rmcore\business;


use app\rmcore\model\ConfigGroupModel;
use app\rmcore\model\ConfigModel;
use RmTop\RmCmsService\lib\RmTemp;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\facade\Db;

class Config
{


    /**
     * 获取某一配置值
     * @param $en_name
     * @param  $default
     * @return mixed|string
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    public static function get_value_for_enName($en_name,$default = ''): string
    {
        $model = ConfigModel::where('en_name',$en_name)->find();
        if (empty($model)){
            return $default;
        }
        return  $model->value;
    }


    /**
     * @param $en_name
     * @param array $value
     * 更具系统参数设置某项配置
     * @return mixed
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    public static function set_value_for_enName($en_name,array $value){
        //如果配置的是模板切换 备份当前模板数据
        if($en_name == "tmp_path"){
            RmTemp::ExportTempSql( root_path().'/public/template/'.Config::get_value_for_enName("tmp_path")."/");
            RmTemp::ImportTempSql( root_path().'/public/template/'.$value['value']."/top_temp.sql");
        }
        return  ConfigModel::where(['en_name'=>$en_name])->update($value);
    }


    /**
     * 查找key值
     * @param $en_name
     * @return ConfigModel|array|\think\Model|null
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function checkAutoConfigKey($en_name){
       return ConfigModel::where(['en_name'=>$en_name])->find();
    }



    /**
     *获取自定义配置分组列表
     */
    public static function get_auto_config_group(){
        return ConfigGroupModel::where(1)->order('sort','asc')->select()->toArray();
    }



    /**
     * @param array $data
     * 创建分组
     */
    public static function create_config_group(array $data){
       ConfigGroupModel::create($data);
    }


    /**
     * @param int $groupId
     * @return array|\think\Model|null
     * @throws DataNotFoundException
     * @throws ModelNotFoundException
     * @throws \think\db\exception\DbException
     * 获取组的详细信息
     */
    static function get_group_info(int $groupId){
        return ConfigGroupModel::where(['id'=>$groupId])->find();
    }

    /**
     * @param int $groupId
     * @param array $data
     * @return ConfigGroupModel
     * 编辑分组信息
     */
    static function edit_group_info(int $groupId,array $data){
        unset($data['qs']);
        return ConfigGroupModel::where(['id'=>$groupId])->update($data);
    }



    /**
     * 删除配置分组项目
     * 删除分类的时候 同步时删除分类下的配置项
     */
    static  function delete_config_group(int $groupId){
        Db::transaction(function () use ($groupId) {
            Db::table('rtop_config')->where(['group_id'=>$groupId])->delete();
            Db::table('rtop_config_group')->where(['id'=>$groupId])->delete();
        });
    }


    /**
     * 获取配置列表
     * @param int $limit
     * @return \think\Paginator
     * @throws \think\db\exception\DbException
     */
    public static  function get_config_list($limit = 20){
       return ConfigModel::where('group_id',">",'0')->order('group_id,sort','asc')->paginate($limit)->each(function ($item){
           return $item['group'] = ConfigGroupModel::where(['id'=>$item['group_id']])->value('title');//加载分组名称
       });
    }




    /**
     * @param int $groupId
     * @return array
     * @throws DataNotFoundException
     * @throws ModelNotFoundException
     * @throws \think\db\exception\DbException
     * 获取配置分组信息
     */
    public static function get_config_group(int $groupId){
        return ConfigModel::where(['group_id'=>$groupId])->order('sort','asc')->select()->toArray();
    }




    /**
     * @param int $groupId
     * @param string $en_name
     * @param array $data
     * @throws DataNotFoundException
     * @throws ModelNotFoundException
     * @throws \think\db\exception\DbException
     * 创建配置项
     */
    public static  function  create_config(int $groupId,string $en_name,array $data){
        if(!ConfigModel::where(['en_name'=>$en_name])->find()){
            ConfigModel::create($data);
        }
    }


    /**
     * @param int $config_id
     * 删除配置项
     * @return bool
     */
    static function delete_config(int $config_id){
        return ConfigModel::where(['id'=>$config_id])->delete();
    }



    /**
     * @param int $groupId
     * @return array|\think\Model|null
     * @throws DataNotFoundException
     * @throws ModelNotFoundException
     * @throws \think\db\exception\DbException
     * 获取配置细信息
     */
    static function get_config_info(int $id){
        return ConfigModel::where(['id'=>$id])->find();
    }


    /**
     * @param int $groupId
     * @param array $data
     * 编辑配置项目
     * @return ConfigModel
     */
    static function edit_config_info(int $id,array $data){
        unset($data['qs']);
        return ConfigModel::where(['id'=>$id])->update($data);
    }




}