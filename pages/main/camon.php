<?php
if(isset($_GET['partnerCode'])) {
    $code_order = rand(0,9999);
    $partnerCode = $_GET['partnerCode'];
    $orderId = $_GET['orderId'];
    $amount = $_GET['amount'];
    $orderInfo = $_GET['orderInfo'];
    $orderType = $_GET['orderType'];
    $transId = $_GET['transId'];
    $payType = $_GET['payType'];
    // insert database momo
    $insert_momo = "INSERT INTO tbl_momo (partner_code,order_id,amount,order_info,order_type,trans_id,pay_type,code_cart) VALUE('".$partnerCode."','".$orderId."','".$amount."','".$orderInfo."','".$orderType."','".$partnerCode."','".$transId."','".$payType."','".$code_order."')";
    $cart_query = mysqli_query($mysqli,$insert_momo);
    if($cart_query) {
        //insert gio hang
        // them don hang chi tiet
        foreach($_SESSION['cart'] as $key => $value) {
            $id_sanpham = $value['id'];
            $soluong = $value['soluong'];
            $insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham, code_cart,soluongmua) VALUE('".$id_sanpham."',".$code_order."',".$soluong."')";
            mysqli_query($mysqli,$insert_order_details);
        }
        echo '<h3>Giao dịch thanh toán bằng MOMO thành công</h3>';
        echo '<p>Vui lòng vào trang <a target="_blank" href="#">Lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
    }else {
        echo 'Giao dịch MOMO thất bại';
    }
}
?>