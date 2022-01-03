<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/23
 * Time: 1:08 上午
 */


namespace app\moudels\atlas\control;

use app\moudels\atlas\business\Atlas as AtlasBusiness;

trait AdminAtlas
{
    
    /**
     * 获取图集列表
     * @return false|string|\think\response\View
     * @throws \think\db\exception\DbException
     */
    private function getAtlasList(){
        if(request()->isPost()){
            $request = request()->param();
            return  out_result("json",1,'请求成功',AtlasBusiness::get_atlas_list($request['col_id'],$request['searchKey'],15),'');
        }
        return view('../app/moudels/atlas/view/get_atlas_list.html');
    }


    /**
     * 创建图集
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function atlas_add(){
        if(request()->isPost()){
            $data = request()->param();
            $create = AtlasBusiness::add_edit_atlas("add",$data);
            return  out_result("jump",1,'',[],content_redirect(1,"atlas_add_".$create->id."_".request()->param()['col_id']));
        }
    }


    /**
     * 编辑图集
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function atlas_edit(){
        if(request()->isPost()){
            $data = request()->param();
            AtlasBusiness::add_edit_atlas("edit",$data);
            return  out_result('jump',1,'请求成功',[],content_redirect(1,"atlas_edit_".request()->param()['id']."_".request()->param()['col_id']));
        }
    }


    /**
     * 删除图集
     * @return mixed
     */
    private function atlas_delete(){
        AtlasBusiness::delete_atlas(request()->param()['id']);
        return  out_result("jump",1,'',[],content_redirect(1,"atlas_delete_".request()->param()['id']."_".request()->param()['col_id']));
    }
    
    

}