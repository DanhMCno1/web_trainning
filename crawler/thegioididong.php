<?php
require_once 'simple_html_dom.php';
$arrContextOptions=array (
    "ssl"=>array (
        "verify_peer"=>false,
        "verify_peer_name"=>false,
    ),
);

$curl_handle=curl_init();
curl_setopt($curl_handle, CURLOPT_URL,'https://www.thegioididong.com/tai-nghe-bluetooth');
curl_setopt($curl_handle, CURLOPT_CONNECTTIMEOUT, 2);
curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl_handle, CURLOPT_USERAGENT, 'Your application name');
$result = curl_exec($curl_handle);
curl_close($curl_handle);
// echo '<pre>';
// print_r($result);
// echo '</pre>'; die;
echo $content;

?>