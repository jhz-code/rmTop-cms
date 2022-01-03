<?php


namespace app\entrance;


use app\Request;
use app\rmcore\business\AuthRules;
use app\rmcore\business\Login;
use app\rmcore\control\manage\Core;
use app\rmcore\middleware\AdminMiddleware;
use think\facade\Session;
use think\facade\View;

class Admin extends Base
{
    use Core;
    protected $middleware = [AdminMiddleware::class];
    protected $Referer;
    protected array $tips = [
        'success'=>'/rmtop/success',
        'error'=>'/rmtop/error',
        'tips'=>'/rmtop/tips',
        '404'=>'/rmtop/404',
    ];


    protected function initialize()
    {
        Login::isLogin();
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->setNav(); //设置菜单
        $this->Referer =  \think\facade\Request::header("Referer");//获取源地址
        $bans = AuthRules::get_rules_title(input('qs'));
        View::assign('nav_title',$bans);//设置操作面包屑
        View::assign("adminInfo",Session::get('adminId')['adminInfo']);
        View::config(['view_path' => root_path()]);

    }


    function index(Request $request)
    {
        $Qs = $request->param('qs')??"show_404";
        return $this->$Qs();
    }

    function setNav(){
        $list = AuthRules::get_rules_list();
        View::assign("navs",$list);//绑定模版
    }




}