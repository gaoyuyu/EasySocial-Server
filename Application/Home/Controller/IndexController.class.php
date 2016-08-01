<?php
namespace Home\Controller;

use Think\Controller;

class IndexController extends Controller
{
    public function index()
    {
//        $a = M("test");
//        dump($a->select());

    $ch = curl_init();
    $url = 'http://apis.baidu.com/dmxy/truevideourl/truevideourl?url=http://weibo.com/p/2304443c2de03adc2570fd7bf91ded9d2a675b';
    $header = array(
        'apikey: ',
    );
    // 添加apikey到header
    curl_setopt($ch, CURLOPT_HTTPHEADER  , $header);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    // 执行HTTP请求
    curl_setopt($ch , CURLOPT_URL , $url);
    $res = curl_exec($ch);
        $res = json_decode($res);
        dump($res);
    echo $res->mp4;

    }
}