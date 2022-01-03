<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/24
 * Time: 8:05 上午
 */


namespace app\moudels\download\control;

use app\moudels\download\business\Download as DownloadBusiness;

trait AdminDownload
{



    /**
     * 获取图集项列表
     * @return false|string|\think\response\View
     * @throws \think\db\exception\DbException
     */
    private function getDownloadList(){
        if(request()->isPost()){
            $request = request()->param();
            return  out_result("json",1,'请求成功',DownloadBusiness::get_download_list($request['col_id'],$request['searchKey'],15),'');
        }
        return view('../app/moudels/download/view/get_download_list.html');
    }


    /**
     * 创建下载项
     * @return mixed
     */
    private function download_add(){
        if(request()->isPost()){
            $create = DownloadBusiness::add_edit_download("add",request()->param());
            return  out_result("jump",1,'',[],content_redirect(1,"download_add_".$create->id."_".request()->param()['col_id']));
        }
    }


    /**
     * 编辑下载项
     * @return mixed
     */
    private function download_edit(){
        if(request()->isPost()){
            return  out_result('jump',1,'请求成功',DownloadBusiness::add_edit_download("edit",request()->param()),content_redirect(1,"download_edit_".request()->param()['id']."_".request()->param()['col_id']));
        }
    }


    /**
     * 删除下载项
     * @return mixed
     */
    private function download_delete(){
        DownloadBusiness::delete_download(request()->param()['id']);
        return  out_result("jump",1,'',[],content_redirect(1,"download_delete_".request()->param()['id']."_".request()->param()['col_id']));
    }



}