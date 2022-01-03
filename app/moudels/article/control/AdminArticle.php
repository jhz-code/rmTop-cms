<?php
/**
 * Created by Rmsf.
 * User: zhuok520@qq.com
 * Date: 2021/2/18
 * Time: 11:41 下午
 */


namespace app\moudels\article\control;

use app\moudels\article\business\Article as ArticleBusiness;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\facade\View;

trait AdminArticle
{


    /**
     * 获取文章列表
     * @return false|string|\think\response\View
     * @throws DbException
     */
    private function getArticleList(){
        if(request()->isPost()){
            $request = request()->param();
            return  out_result("json",1,'请求成功',ArticleBusiness::get_article_list($request['col_id'],$request['searchKey'],9),'/rmtop/content');
        }
        return view('../app/moudels/article/view/get_article_list.html');
    }


    /**
     * 创建文章
     * @return mixed
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    private function article_add(){
        if(request()->isPost()){
            $create = ArticleBusiness::add_edit_article("add",request()->param());
            return  out_result("jump",1,'',[],content_redirect(1,"article_add_".$create->id."_".request()->param()['col_id']));
        }
    }


    /**
     * 编辑文章
     * @return mixed
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    private function article_edit(){
        if(request()->isPost()){
            return  out_result('jump',1,'请求成功',ArticleBusiness::add_edit_article("edit",request()->param()),content_redirect(1,"article_edit_".request()->param()['id']."_".request()->param()['col_id']));
        }
    }


    /**
     * 删除文章
     * @return mixed
     */
    private function article_delete(){
        ArticleBusiness::delete_article(request()->param()['id']);
        return  out_result("jump",1,'',[],content_redirect(1,"article_delete_".request()->param()['id']."_".request()->param()['col_id']));
    }





}