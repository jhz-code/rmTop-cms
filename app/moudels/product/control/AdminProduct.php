<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/21
 * Time: 9:24 下午
 */


namespace app\moudels\product\control;
use app\moudels\product\business\Product;
use app\moudels\product\business\Product as ProductBusiness;
use app\rmcore\business\Column;
use app\rmcore\business\Content;
use think\facade\View;

trait AdminProduct
{


    /**
     * 获取产品列表
     * @return false|string|\think\response\View
     * @throws \think\db\exception\DbException
     */
    private function getProductList(){
        if(request()->isPost()){
            $request = request()->param();
            return  out_result("json",1,'请求成功',ProductBusiness::get_product_list($request['col_id'],$request['searchKey'],15),'');
        }
        $model = "product";
        $column_id = request()->param()['col_id']??"";
        $action = request()->param()['action']??"index";
        View::assign('model',$model);
        View::assign('column_id',$column_id);
        View::assign('list',ProductBusiness::get_product_list($column_id,'',15));//输出页面内容
        if(!empty($column_id)) {
            View::assign("actions", Content::get_action_list($model, $action, $column_id));//输出操作URl
            View::assign("column_title", Column::get_column_title_by_id($column_id));
            return view('/app/rmcore/view/ajax_html/product/product_list');
        }
    }




    /**
     * 创建产品
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function product_add(){
        if(request()->isPost()){
            $create = ProductBusiness::add_edit_product("add",request()->param());
            return  out_result("jump",1,'',[],content_redirect(1,"product_add_".$create->id."_".request()->param()['col_id']));
        }
    }


    /**
     * 编辑产品
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function product_edit(){
        if(request()->isPost()){
            return  out_result('jump',1,'请求成功',ProductBusiness::add_edit_product("edit",request()->param()),content_redirect(1,"product_edit_".request()->param()['id']."_".request()->param()['col_id']));
        }
    }


    /**
     * 删除产品
     * @return mixed
     */
    private function product_delete(){
        ProductBusiness::delete_product(request()->param()['id']);
        return  out_result("jump",1,'',[],content_redirect(1,"product_delete_".request()->param()['id']."_".request()->param()['col_id']));
    }





}