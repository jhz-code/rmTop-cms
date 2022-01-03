<?php


namespace app\moudels\video\control;


use app\moudels\video\business\Video as VideoBusiness;

trait AdminVideo
{

    /**
     * 获取视频列表
     * @return false|string|\think\response\View
     * @throws \think\db\exception\DbException
     */
    private function getVideoList(){
        if(request()->isPost()){
            $request = request()->param();
            return  out_result("json",1,'请求成功',VideoBusiness::get_video_list($request['col_id'],$request['searchKey'],15),'');
        }
        return view('../app/moudels/video/view/get_video_list.html');
    }


    /**
     * 创建视频
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function video_add(){
        if(request()->isPost()){
             $create = VideoBusiness::add_edit_vedio("add",request()->param());
            return  out_result("jump",1,'',[],content_redirect(1,"video_add_".$create->id."_".request()->param()['col_id']));
        }
    }


    /**
     * 编辑视频
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function video_edit(){
        if(request()->isPost()){
            return  out_result('jump',1,'请求成功',VideoBusiness::add_edit_vedio("edit",request()->param()),content_redirect(1,"video_edit_".request()->param()['id']."_".request()->param()['col_id']));
        }
    }

    /**
     * 删除视频
     * @return mixed
     */
    private function video_delete(){
        VideoBusiness::delete_vedio(request()->param()['id']);
        return  out_result("jump",1,'',[],content_redirect(1,"video_delete_".request()->param()['id']."_".request()->param()['col_id']));
    }



}