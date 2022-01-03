<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/24
 * Time: 2:20 上午
 */


namespace app\moudels\recruitment\control;



use app\moudels\recruitment\business\Recruitment as RecruitmentBusiness;

trait Recruitment
{

    /**
     * 获取招聘列表
     * @return false|string|\think\response\View
     * @throws \think\db\exception\DbException
     */
    private function getRecruitList(){
        if(request()->isPost()){
            $request = request()->param();
            return  out_result("json",1,'请求成功',RecruitmentBusiness::get_recruit_list($request['col_id'],$request['searchKey'],15),'');
        }
        return view('../app/moudels/recruitment/view/get_recruit_list.html');
    }


    /**
     * 创建招聘
     * @return mixed
     */
    private function recruitment_add(){
        if(request()->isPost()){
             $create = RecruitmentBusiness::add_edit_recruit("add",request()->param());
            return  out_result("jump",1,'',[],content_redirect(1,"recruitment_add_".$create->id."_".request()->param()['col_id']));
        }
    }


    /**
     * 编辑招聘
     * @return mixed
     */
    private function recruitment_edit(){
        if(request()->isPost()){
            return  out_result('jump',1,'请求成功',RecruitmentBusiness::add_edit_recruit("edit",request()->param()),content_redirect(1,"recruitment_edit_".request()->param()['id']."_".request()->param()['col_id']));
        }
    }


    /**
     * 删除招聘
     * @return mixed
     */
    private function recruitment_delete(){
        var_dump(request()->param()['id']);
        RecruitmentBusiness::delete_recruit(request()->param()['id']);
        return  out_result("jump",1,'',[],content_redirect(1,"recruitment_delete_".request()->param()['id']."_".request()->param()['col_id']));
    }

}