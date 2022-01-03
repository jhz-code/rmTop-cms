<?php


namespace app\rmcore\model;


use think\db\exception\DataNotFoundException;
use think\db\exception\ModelNotFoundException;
use think\Model;

class ConfigModel extends Model
{

    // 设置当前模型对应的完整数据表名称
    protected $table;
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = true;

    public function __construct(array $data = [])
    {
        $this->table = env('database.prefix', '')."config";
        parent::__construct($data);
    }



}