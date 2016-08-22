<?php
/**
 * Created by PhpStorm.
 * User: gaoyy
 * Date: 2016/4/15/0015
 * Time: 12:59
 */

/**
 * SAE
 * @return mixed
 */
function getMemcache()
{
    $mmc = memcache_init();
    return $mmc;
}

function setLocalData($key, $value)
{
    F($key, $value);
}

function getLocalData($key)
{
    $value = F($key);
    return $value;
}

function scanFile($dir)
{
    $list = scandir($dir);
    for ($i = 2; $i < count($list); $i++)
    {
        $remoteDir = "http://192.168.11.117/easysocial/Public/apk" . '/' . $list[$i];
        $locationDir = $dir . '/' . $list[$i];
        $file = array(
            "location" => $locationDir,
            "remote" => $remoteDir,
            "size" => size2mb(filesize($locationDir))

        );
        $arr[] = $file;
        //判断是否是文件夹 是就调用自身函数再去进行处理
        //        if (is_dir($location_dir) && '.' != $file && '..' != $file)
        //        {
        //            $this->loopFun($location_dir);
        //        }

    }
    return $arr;
}

function size2mb($size, $digits = 1)
{ //digits，要保留几位小数
    $unit = array('', 'K', 'M', 'G', 'T', 'P');//单位数组，是必须1024进制依次的哦。
    $base = 1024;//对数的基数
    $i = floor(log($size, $base));//字节数对1024取对数，值向下取整。
    return round($size / pow($base, $i), $digits) . ' ' . $unit[$i] . 'B';
}