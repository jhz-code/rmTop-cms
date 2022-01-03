<?php
namespace app;

use app\rmcore\business\Config;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\exception\ClassNotFoundException;
use think\exception\Handle;
use think\exception\HttpException;
use think\exception\HttpResponseException;
use think\exception\ValidateException;
use think\Response;
use Throwable;

/**
 * 应用异常处理类
 */
class ExceptionHandle extends Handle
{
    /**
     * 不需要记录信息（日志）的异常类列表
     * @var array
     */
    protected $ignoreReport = [
        HttpException::class,
        HttpResponseException::class,
        ModelNotFoundException::class,
        DataNotFoundException::class,
        ValidateException::class,
    ];

    /**
     * 记录异常信息（包括日志或者其它方式记录）
     *
     * @access public
     * @param  Throwable $exception
     * @return void
     */
    public function report(Throwable $exception): void
    {
        // 使用内置的方式记录异常日志
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @access public
     * @param \think\Request   $request
     * @param Throwable $e
     * @return Response
     */

    public function render($request, Throwable $e): Response
    {
        // 添加自定义异常处理机制

        // 其他错误交给系统处理
        // 参数验证错误
        if ($e instanceof ValidateException) {
            return json(['code'=>0,'msg'=>$e->getMessage()]);
        }

        // 请求异常
        if ($e instanceof HttpException && $request->isAjax()) {
            return json(['code'=>0,'msg'=>$e->getMessage()]);
        }


//        // token  异常
//        if ($e instanceof JWTException) {
//            if($e->getMessage()== "Must have token"){
//                return json(['code'=>-1,'msg'=>"登录后操作"]);
//            }
//            return json(['code'=>-1,'msg'=>$e->getMessage()]);
//        }


        // 数据查询异常
        if ($e instanceof DbException) {
            return json(['code'=>-2,'msg'=>$e->getMessage()]);
        }


        //类异常
        if($e instanceof ClassNotFoundException){
            return json(['code'=>3,'msg'=>$e->getMessage()]);
        }


        if(Config::get_value_for_enName('developer') == 2){
             die('forbidden');
        }

       // return parent::render($request, $e);

       // Header("Location: /rmtop/404 ");


        return json(['code'=>0,'msg'=>$e->getMessage()]);
    }
}
