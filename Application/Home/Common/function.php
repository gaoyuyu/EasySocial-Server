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

function setLocalData($key,$value)
{
    F($key,$value);
}

function getLocalData($key)
{
    $value = F($key);
    return $value;
}