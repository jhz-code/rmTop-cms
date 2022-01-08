<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/4/6
 * Time: 11:07 下午
 */


namespace app\entrance;
use app\rmcore\business\Login as LoginBusiness;
use think\captcha\facade\Captcha;
use think\Exception;
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
            // 检测输入的验证码是否正确，$value为用户输入的验证码字符串
            if(!Captcha::check(input('verify_code')))throw new Exception("请输入正确的验证码！！");//验证码
            return LoginBusiness::admin_login(input('login_account'),input('login_pass'));
        }
        View::config(['view_path' => root_path()]);
        return View::fetch('/app/rmcore/view/login');
    }


    /**
     * 验证码生成
     * @return \think\Response
     */
    function verify(){
        return Captcha::create();
    }


}