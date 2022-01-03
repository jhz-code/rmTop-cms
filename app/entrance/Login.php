<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/4/6
 * Time: 11:07 下午
 */


namespace app\entrance;
use app\rmcore\business\Login as LoginBusiness;
use think\facade\Session;
use think\facade\View;

class Login
{

    public function __construct()
    {
        /**
         * 检测 如果已登录 则直接跳转到管理界面
         */
        if(Session::get('adminId')){
            Header("Location: /rmtop/mainPage#/rmtop/inipage");
        }
    }

    /**
     * 用户登录
     * @throws \think\Exception
     */
    function Index()
    {
        if(request()->post()){
           return LoginBusiness::admin_login(input('login_account'),input('login_pass'));
        }
        View::config(['view_path' => root_path()]);
        return View::fetch('/app/rmcore/view/login');
    }

}