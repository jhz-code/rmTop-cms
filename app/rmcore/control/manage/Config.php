<?php


namespace app\rmcore\control\manage;

/**
 * Class Config
 * @package app\rmcore\control\manage
 * 配置中心控制器
 */

use app\rmcore\business\Config as ConfigBusiness;
use app\rmcore\business\Template;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\facade\View;

trait Config
{

    /**
     * 系统配置页面
     * @return \think\response\View
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    private function systemConfig(){
        if(request()->isPost()){
            foreach( request()->param() as $key=>$value){
                ConfigBusiness::set_value_for_enName($key,['value'=>$value]);
            }
        }
        //构架配置页面数据
        $configArr = ConfigBusiness::get_config_group(0);
        $config = [];
        foreach ($configArr as $key => $value){
            $config[$value['en_name']] = $value['value'];
        }
        View::assign("tpl",Template::tempList());
        View::assign("config",$config);
        return view('/app/rmcore/view/config');
    }


    /**
     * 自定义配置页面
     * @return \think\response\View
     */
    private function autoConfig(){
        if(request()->isPost()){
            foreach( request()->param() as $key=>$value){
                ConfigBusiness::set_value_for_enName($key,['value'=>$value]);
            }
        }
        return view('/app/rmcore/view/auto_config');
    }


    /**
     * 配置分组列表
     * @return \think\response\View
     */
    private function configGroupList(){
        $group = ConfigBusiness::get_auto_config_group();
        foreach ($group as $key => $value) {
            $group[$key]['delete_url'] = "/rmtop/deleteConfigGroup?gid=" . $value['id'];
            $group[$key]['edit_url'] = "/rmtop/editConfigGroup?gid=" . $value['id'];;
        }
        View::assign("group",$group);
        return view('/app/rmcore/view/ajax_html/config/config_group_list');
    }


    /**
     * 配置项列表
     * @return \think\response\View
     * @throws DbException
     */
    private function configsetList(){
        $group = ConfigBusiness::get_config_list(15);
        foreach ($group as $key => $value) {
            $group[$key]['delete_url'] = "/rmtop/deleteConfig?id=" . $value['id'];
            $group[$key]['edit_url'] = "/rmtop/editConfig?id=" . $value['id'];;
        }
        View::assign("config",$group);
        return view('/app/rmcore/view/ajax_html/config/configset_list');
    }


    /**
     * 配置设置页面
     * @return \think\response\View
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    private function setConfigFrom(){
        $group = ConfigBusiness::get_auto_config_group();
        foreach ($group as $key => $value){
            $configArr = ConfigBusiness::get_config_group($value['id']);
            if($configArr){
                $group[$key]['child'] =  $configArr;
            }else{
                unset($group[$key]);
            }
        }
        View::assign("group",$group);
        return view('/app/rmcore/view/ajax_html/config/set_config_from');
    }


    /**
     * 创建自定义配置
     * @return mixed|\think\response\View
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    private function ajaxAddAutoConfig(){
        if(request()->isPost()){
            ConfigBusiness::create_config(request()->param()['group_id'],request()->param()['en_name'],request()->param());
            return out_result('jump','1','','','/rmtop/autoConfig');
        }
        View::assign('group',ConfigBusiness::get_auto_config_group());
        return view('/app/rmcore/view/ajax_html/config/add_auto_config');
    }


    /**
     * 编辑自定义配置信息
     * @return mixed|\think\response\View
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     *
     */
    private function editConfig(){
        if(request()->isPost()){
            ConfigBusiness::edit_config_info(request()->param()['id'],request()->param());
            return out_result('jump','1','','','/rmtop/autoConfig');
        }
        View::assign('group',ConfigBusiness::get_auto_config_group());
        View::assign('config',ConfigBusiness::get_config_info(request()->param()['id']));
        return view('/app/rmcore/view/ajax_html/config/edit_config');
    }



    /**
     * 删除配置项目
     * @return mixed
     */
    private function deleteConfig(){
        ConfigBusiness::delete_config(request()->param()['id']);
        return out_result('jump','1','','','/rmtop/autoConfig');
    }


    /**
     * 添加配置分组
     * @return mixed|\think\response\View
     */
    private function ajaxAddConfigGroup(){
        if(request()->isPost()){
            ConfigBusiness::create_config_group(request()->param());
            return out_result('jump','1','','','/rmtop/autoConfig');
        }
        return view('/app/rmcore/view/ajax_html/config/add_auto_group');
    }


    /**
     * 检测参数是否唯一
     * @return mixed
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    private function checkAutoConfigKey(){
        $res = ConfigBusiness::checkAutoConfigKey(input('paramKey'));
        if(!$res){
            return  out_result("json",1,'验证通过',[],'');
        }else{
            return  out_result("json",0,'标识符不能重复',[],'');

        }
    }




    /**
     * 编辑配置分组信息
     * @return mixed|\think\response\View
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    private function editConfigGroup(){
        if(request()->isPost()){
            ConfigBusiness::edit_group_info(request()->param()['id'],request()->param());
            return out_result('jump','1','','','/rmtop/autoConfig');
        }
        View::assign('group',ConfigBusiness::get_group_info(request()->param()['gid']));
        return view('/app/rmcore/view/ajax_html/config/edit_config_group');
    }




    /**
     * 删除配置项分组
     * @return mixed
     */
    private function deleteConfigGroup(){
        ConfigBusiness::delete_config_group(request()->param()['gid']);
        return out_result('jump','1','','','/rmtop/autoConfig');
    }



}