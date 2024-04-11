<?php
include('../admincp/config/config.php');
require_once 'simple_html_dom.php';

$curl_handle=curl_init();
curl_setopt($curl_handle, CURLOPT_URL, $_GET['url']);
curl_setopt($curl_handle, CURLOPT_CONNECTTIMEOUT, 2);
curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl_handle, CURLOPT_USERAGENT, 'Your application name');
$content = curl_exec($curl_handle);
curl_close($curl_handle);

// Create a Simple HTML DOM object from the fetched content
$html = new simple_html_dom();
$html->load($content);
// echo $html; die;
$name = $html->find('section h1', 0)->innertext;

$price = extractNumber(html_entity_decode($html->find('.price-one .box-price .box-price-present', 0)->innertext));

$info = $html->find('.article.content-t-wrap .article__content.short .content-article', 0)->innertext;

$parameter = $html->find('.parameter', 0)->innertext;

$imageElement = $html->find('section .box01__show .show-tab .detail-slider .slider-item.item img', 0);
// Get the URL of the image
$imageUrl = $imageElement->src;
// Extract the filename from the URL
$path_parts = pathinfo($imageUrl);
$filename = $path_parts['basename'];

// Download the image using cURL
$imageData = file_get_contents('https:' . $imageUrl);

// Save the image to a file
file_put_contents('../admincp/modules/quanlysp/uploads/' . $filename, $imageData);

$sql_them = "INSERT INTO tbl_sanpham(tensanpham, masp, giasp, hinhanh, soluong, tomtat, noidung, tinhtrang, id_danhmuc) VALUE('".$name."','".rand(1, 100000)."','".$price."','".$filename."','".rand(10, 50)."','".htmlentities($parameter)."','".htmlentities($info)."',1,15)";

mysqli_query($mysqli,$sql_them);

echo 'DONE!';die;

function extractNumber($string) {
    // Remove any non-numeric characters from the string
    $numberString = preg_replace('/[^0-9]/', '', $string);
    // Convert the string to an integer
    $number = (int) $numberString;
    return $number;
}
 
?>