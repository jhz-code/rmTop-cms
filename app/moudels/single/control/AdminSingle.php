<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/7
 * Time: 2:24 下午
 */


namespace app\moudels\single\control;


use app\moudels\single\business\Single as SingleBusiness;
use app\rmcore\model\SingleParams;
use think\facade\View;

trait AdminSingle
{


    /**
     * 创建单页
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function single_index(){
        if(request()->isPost()){
            SingleBusiness::add_edit_single("add",request()->param());
            return  out_result("jump",1,'',[],content_redirect(1,"single_add_0_".request()->param()['col_id']));
        }
    }


    /**
     * 添加参数视图
     * @return \think\response\View
     */
    private function singel_add_params_view(){
        View::assign("cid",input('cid'));
        View::assign("id",input('cid'));
        return view('/app/rmcore/view/ajax_html/single/addParams');
    }


    /**
     * 添加页面参数
     * @return mixed
     */
    private function singel_add_params(){
        if(request()->isPost()){
            $create =  SingleBusiness::addSingleParam(request()->param()['cid'],request()->param()['type'],request()->param()['key'],request()->param()['title']);
            if($create){
                $sid = request()->param()['cid'];
                return  out_result("jump",1,'',[],"/rmtop/showContent?model=single&col_id=$sid");
            }
        }
    }


    private function single_delete_params(){
        $istrue =  SingleBusiness::deleteSingleParam(request()->param()['id']);
        if($istrue){
            $sid = request()->param()['cid'];
            return  out_result("json",1,'','',"/rmtop/showContent?model=single&col_id=$sid");
        }
    }




    /**
     * 验证参数
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function checkSingleParamsKey(){
        $res = SingleBusiness::checkParams(input('sid'),input('paramKey'));
        if(!$res){
            return  out_result("json",1,'验证通过',[],'');
        }else{
            return  out_result("json",0,'标识符不能重复',[],'');

        }
    }







}