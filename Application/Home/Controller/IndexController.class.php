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
    $url = 'http://apis.baidu.com/dmxy/truevideourl/truevideourl?url=http://v.youku.com/v_show/id_XMTY1MjU5NzI5Ng==.html';
    $header = array(
        'apikey: 395d5a724c3a77d83336f2a4afa9f765',
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