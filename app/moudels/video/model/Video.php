<?php


namespace app\moudels\video\model;


use think\Model;

class Video extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $table;
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = true;

    public function __construct(array $data = [])
    {
        $this->table = env('database.prefix', '')."extends_video";
        parent::__construct($data);
    }


}