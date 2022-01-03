<?php


namespace app\moudels\article\business;
use app\rmcore\business\Column;
use app\rmcore\business\Config;
use app\rmcore\inface\RmtopBusiness;
use app\moudels\article\model\Article as ArticleModel;
use think\db\exception\DataNotFoundException;
use think\db\exception\DbException;
use think\db\exception\ModelNotFoundException;
use think\facade\Db;

class Article implements RmtopBusiness
{


    /**
     * 初始化构架
     * @param $action
     * @param $column_id
     * @return array|string
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     *
     */
      static  function rmtop_struct_ini($action, $column_id){
        switch ($action) {
            case "index":
                return self::get_article_list($column_id, '', 9);
            case "edit":
              return  self::get_article_info(request()->param()['id'], '*');
            default:
                return  [];
        }
     }


    /**
     * 初始化消费框架
     * @param $action
     * @param $param
     * @return array|string
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function rmtop_struct_consumer($action,$param)
    {
        switch ($action){
            case "list":
                return self::get_article_list($param['col_id'],$param['keyword'],$param['limit']);
            case "info";
               return self::get_article_info($param['col_id'],$param['field']);
            default:
                return  [];
        }
    }


    /**
     * @param string $type //操作类型
     * @param $data
     * @return ArticleModel|bool|\think\Model
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static  function add_edit_article(string $type,$data){
        $data['content'] = $data['editorValue'];
        if($type == 'add'){
            $data['uqid'] = getUniqid();
            $info = ArticleModel::create($data);
           if(Config::get_value_for_enName("add_push_open")){
               pushSearch(array(previewUrl($data['uqid'],$data['col_id'],$data['title'])));//推送信息
           }
            return  $info;
        }else if($type == "edit"){
            $info =  ArticleModel::find($data['id']);
            return $info->save($data);
        }
    }



    /**
     * @param int $col_id  //栏目ID
     * @param string $searchKey  //检索标题
     * @param int $count //分页输出数据
     * @return array|\think\Paginator
     * @throws DbException
     */
    static function get_article_list(int $col_id,string  $searchKey,int $count = 9)
    {
        $where = $col_id?"col_id = $col_id":1;
       if($info = ArticleModel::where($where)->whereLike('title',"%$searchKey%")->order('id','desc')->paginate(['list_rows'=>$count,'query' => request()->param()])->each(function (&$item){
              $item['column_title'] = Column::get_column_title_by_id( $item['col_id']);
              $item['url'] = TopUrl(Column::get_column_by_id($item['col_id'])['model'],Column::get_column_by_id($item['col_id'])['en_title'],getIdEncryption($item['uqid']),'',$item['title']);
              return $item;
       })){
               return  $info;
           }else{
               return  [];
           }
    }


    /**
     * taglib 标签输出数据
     * @param int $cid 分类ID
     * @param string $filed 输出字段
     * @param string $searchKey 匹配关键词
     * @param int $limit //输出条数
     * @param string $orderBy 排序key
     * @return array|\think\Collection
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function get_taglib_article_list(int $cid, string $filed, string $searchKey, int $limit = 10, string $orderBy ='id desc'){
        $list = ArticleModel::where(['col_id'=>$cid])->whereLike('title',"%$searchKey%")->field($filed)->order($orderBy)->page(input('page')??1,$limit)->select();
        foreach ($list as $key=>$value){
            $list[$key]['column_title'] = Column::get_column_title_by_id($value['col_id']);
            $list[$key]['url'] = TopUrl(Column::get_column_by_id($value['col_id'])['model'],Column::get_column_by_id($value['col_id'])['en_title'],getIdEncryption($value['uqid']),$value['title']);
        }
       return $list;
    }


    /**
     * 输出文章信息
     * @param $id
     * @param string $filed
     * @return string
     * @throws DataNotFoundException
     * @throws DbException
     * @throws ModelNotFoundException
     */
    static function get_article_info($id,string $filed = ""){

        if(!is_numeric($id)){
            $condition = "uqid = '".getIdDeciphering($id)."'";
        }else{
            $condition = "id = ".$id;
        }
        if($filed == "img_lists"){
            $imglist =  ArticleModel::where($condition)->value("img_lists");
            return  explode(',',$imglist);
        }else if($filed == 'view_path'){
            //若设置了单页单独模板
            $find  = ArticleModel::where($condition)->find();//单独的详情设置模板页面
            if(isset($find['view_path']) && !empty($find['view_path'])){
                return  $find['view_path'];
            }

            //若设置了栏目单独详情模板
            $column = Column::get_column_by_id($find['col_id']);
            if(isset($column['info_tmp']) && !empty($column['info_tmp'])){
                return $column['info_tmp'];
            }
            return "info";
        }else{
            //判断是否是加密数据
            ArticleModel::where($condition)->update(['views'=>	Db::raw('views+1')]);
            return ArticleModel::where($condition)->field($filed)->find();
        }
    }




    /**
     * 删除文章
     * @param int $id
     * @return bool
     */
    static function delete_article(int $id): bool
    {
        return ArticleModel::where(['id'=>$id])->delete();
    }


    /**
       根据栏目 ID 删除相关内容
     * @param int $col_id
     * @return bool
     */
    static function article_delete_by_col_id(int $col_id): bool
    {
       return  ArticleModel::where(['col_id'=>$col_id])->delete();
    }



}