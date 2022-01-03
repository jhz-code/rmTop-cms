<?php

require dirname(__FILE__) . '/../vendor/autoload.php';

$secretId = "SECRETID"; //替换为用户的 secretId，请登录访问管理控制台进行查看和管理，https://console.cloud.tencent.com/cam/capi
$secretKey = "SECRETKEY"; //替换为用户的 secretKey，请登录访问管理控制台进行查看和管理，https://console.cloud.tencent.com/cam/capi
$region = "ap-beijing"; //替换为用户的 region，已创建桶归属的region可以在控制台查看，https://console.cloud.tencent.com/cos5/bucket
$cosClient = new Qcloud\Cos\Client(
    array(
        'region' => $region,
        'schema' => 'https', //协议头部，默认为http
        'credentials'=> array(
            'secretId'  => $secretId ,
            'secretKey' => $secretKey)));
try {
    // start --------------- 桶文件审核 ----------------- //
    $result = $cosClient->detectAudio(array(
        'Bucket' => 'examplebucket-125000000', //存储桶名称，由BucketName-Appid 组成，可以在COS控制台查看 https://console.cloud.tencent.com/cos5/bucket
        'Input' => array(
            'Object' => 'sound01.mp3',
        ),
        'Conf' => array(
            'DetectType' => 'Porn,Terrorism,Politics,Ads',
            'Callback' => 'https://example.com/callback',
            'BizType' => '',
        ),
    ));
    // 请求成功
    print_r($result);
    // end --------------- 桶文件审核 ----------------- //

    // start --------------- 音频文件地址审核 ----------------- //
    $result = $cosClient->detectAudio(array(
        'Bucket' => 'examplebucket-125000000', //存储桶名称，由BucketName-Appid 组成，可以在COS控制台查看 https://console.cloud.tencent.com/cos5/bucket
        'Input' => array(
            'Url' => 'https://example.com/test.mp3',
        ),
        'Conf' => array(
            'DetectType' => 'Porn,Terrorism,Politics,Ads',
            'Callback' => 'https://example.com/callback',
            'BizType' => '',
        ),
    ));
    // 请求成功
    print_r($result);
    // end --------------- 音频文件地址审核 ----------------- //
} catch (\Exception $e) {
    // 请求失败
    echo($e);
}

