<?php


namespace app\moudels\message\control;

use app\moudels\message\business\Message as MessageBusiness;
use think\facade\View;

trait AdminMessage
{

    /**
     * 获取留言列表
     * @return false|string|\think\response\View
     * @throws \think\db\exception\DbException
     */
    private function getMessageList(){
        if(request()->isPost()){
            $request = request()->param();
            return  out_result("json",1,'请求成功',MessageBusiness::get_message_list($request['col_id'],$request['searchKey'],15),'');
        }
        return view('../app/moudels/message/view/get_message_list.html');
    }


    /**
     * 删除留言
     * @return mixed
     */
    private function message_delete(){
        MessageBusiness::delete_message(request()->param()['id']);
        $cid = request()->param()['col_id'];
        return  out_result("jump",1,'',[],"/rmtop/showContent?model=message&col_id=$cid");
    }


    /**
     * 输出留言内容
     * @return \think\response\View
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function messageInfo(){
        View::assign("messageInfo",MessageBusiness::get_message_info(request()->param()['id']));
        return view('../app/moudels/message/view/message_info.html');
    }


}