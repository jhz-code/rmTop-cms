<?php
/**
 * Created by YnRmsf.
 * User: zhuok520@qq.com
 * Date: 2021/3/21
 * Time: 9:23 下午
 */


namespace app\moudels\product\model;


use think\Model;

/**
 * Class Product
 * @package app\moudels\product\model
 * 产品模型模块
 */

class Product extends Model
{

    // 设置当前模型对应的完整数据表名称
    protected $table;
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = true;

    public function __construct(array $data = [])
    {
        $this->table = env('database.prefix', '')."extends_product";
        parent::__construct($data);
    }



}