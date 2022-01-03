<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/23
 * Time: 1:32 上午
 */


namespace app\moudels\atlas\model;


use think\Model;

class Atlas extends Model
{

    // 设置当前模型对应的完整数据表名称
    protected $table;
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = true;

    public function __construct(array $data = [])
    {
        $this->table = env('database.prefix', '')."extends_atlas";
        parent::__construct($data);
    }
}