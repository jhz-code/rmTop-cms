<?php

namespace app\rmcore\control\manage;


use app\rmcore\business\Config as ConfigBusiness;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\facade\View;

trait Template
{


    /**
     */
    function tempIndex()
    {
        return view('/app/rmcore/view/template/tem_index');
    }


    /**
     * 我的模板
     * @return \think\response\View
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    function myTemp(){
        //构架配置页面数据
        $configArr = ConfigBusiness::get_config_group(0);
        $config = [];
        foreach ($configArr as $key => $value){
            $config[$value['en_name']] = $value['value'];
        }
        View::assign("tpl", \app\rmcore\business\Template::tempList());
        View::assign("config",$config);
        return view('/app/rmcore/view/template/my_temp');
    }

}