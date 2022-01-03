<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\facade\Route;
use app\rmcore\funcs\TopDispatch;

/**
 *请求数据调度
 */


Route::rule('/',"/entrance/Install/index");
Route::rule('install/[:step]/[:type]', '/entrance/Install/index'); // 首页访问路由


