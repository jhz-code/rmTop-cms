<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/31
 * Time: 12:26 上午
 */


namespace app\rmcore\model;


use think\Model;

class ConfigGroupModel extends Model
{


    // 设置当前模型对应的完整数据表名称
    protected $table;
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = true;

    public function __construct(array $data = [])
    {
        $this->table = env('database.prefix', '')."config_group";
        parent::__construct($data);
    }

}