<?php
namespace Home\Controller;

use Think\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $dir = "./Public/apk";
        //调用处理函数
        $a = $this->scanFile($dir);
        dump($a);


        //        //        $a = M("test");
        //        //        dump($a->select());
        //
        //        $ch = curl_init();
        //        $url = 'http://apis.baidu.com/dmxy/truevideourl/truevideourl?url=http://weibo.com/p/2304443c2de03adc2570fd7bf91ded9d2a675b';
        //        $header = array(
        //            'apikey: ',
        //        );
        //        // 添加apikey到header
        //        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        //        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        //        // 执行HTTP请求
        //        curl_setopt($ch, CURLOPT_URL, $url);
        //        $res = curl_exec($ch);
        //        $res = json_decode($res);
        //        dump($res);
        //        echo $res->mp4;

    }

    function scanFile($dir)
    {
        $list = scandir($dir);
        for ($i=2;$i<count($list);$i++)
        {
            $locationDir = "http://192.168.11.117/easysocial" . '/' . $list[$i];
            $arr[] = $locationDir;
            //判断是否是文件夹 是就调用自身函数再去进行处理
            //        if (is_dir($location_dir) && '.' != $file && '..' != $file)
            //        {
            //            $this->loopFun($location_dir);
            //        }

        }
        return $arr;
    }
}