<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/24
 * Time: 8:10 上午
 */


namespace app\moudels\download\model;


use think\Model;

class Download extends Model
{


    // 设置当前模型对应的完整数据表名称
    protected $table;
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = true;

    public function __construct(array $data = [])
    {
        $this->table = env('database.prefix', '')."extends_download";
        parent::__construct($data);
    }

}