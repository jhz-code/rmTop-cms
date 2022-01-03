<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/24
 * Time: 2:22 上午
 */


namespace app\moudels\recruitment\model;


use think\Model;

class Recruitment extends Model
{

    // 设置当前模型对应的完整数据表名称
    protected $table;
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = true;

    public function __construct(array $data = [])
    {
        $this->table = env('database.prefix', '')."extends_job";
        parent::__construct($data);
    }


}