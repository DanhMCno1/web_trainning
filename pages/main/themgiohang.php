<?php
    session_start();
    include('../../admincp/config/config.php');
    //them so luong
    if(isset($_GET['cong'])){
        $id=$_GET['cong'];
        foreach($_SESSION['cart'] as $cart_item){
            if($cart_item['id']!=$id){
                $product[]= [
                    'tensanpham'=> $cart_item['tensanpham'],
                    'id'=>$cart_item['id'], 
                    'soluong'=>$cart_item['soluong'], 
                    'giasp'=>$cart_item['giasp'],
                    'hinhanh'=>$cart_item['hinhanh'],
                    'masp'=>$cart_item['masp']
                ];
                $_SESSION['cart'] = $product;
            }else {
                $tangsoluong = $cart_item['soluong'] + 1;
                if($cart_item['soluong']<=9){
                    $product[]= [
                        'tensanpham'=> $cart_item['tensanpham'],
                        'id'=>$cart_item['id'], 
                        'soluong'=>$tangsoluong, 
                        'giasp'=>$cart_item['giasp'],
                        'hinhanh'=>$cart_item['hinhanh'],
                        'masp'=>$cart_item['masp']
                    ];
                }else{
                    $product[]= [
                        'tensanpham'=> $cart_item['tensanpham'],
                        'id'=>$cart_item['id'], 
                        'soluong'=>$cart_item['soluong'], 
                        'giasp'=>$cart_item['giasp'],
                        'hinhanh'=>$cart_item['hinhanh'],
                        'masp'=>$cart_item['masp']
                    ];
                }
                $_SESSION['cart'] = $product;
            }
        }
        header('Location:../../index.php?quanly=giohang');
    }
    // tru so luong
    if(isset($_GET['tru'])){
        $id=$_GET['tru'];
        foreach($_SESSION['cart'] as $cart_item){
            if($cart_item['id']!=$id){
                $product[]= [
                    'tensanpham'=> $cart_item['tensanpham'],
                    'id'=>$cart_item['id'], 
                    'soluong'=>$cart_item['soluong'], 
                    'giasp'=>$cart_item['giasp'],
                    'hinhanh'=>$cart_item['hinhanh'],
                    'masp'=>$cart_item['masp']
                ];
                $_SESSION['cart'] = $product;
            }else {
                $tangsoluong = $cart_item['soluong'] - 1;
                if($cart_item['soluong']>1){
                    $product[]= [
                        'tensanpham'=> $cart_item['tensanpham'],
                        'id'=>$cart_item['id'], 
                        'soluong'=>$tangsoluong, 
                        'giasp'=>$cart_item['giasp'],
                        'hinhanh'=>$cart_item['hinhanh'],
                        'masp'=>$cart_item['masp']
                    ];
                }else{
                    $product[]= [
                        'tensanpham'=> $cart_item['tensanpham'],
                        'id'=>$cart_item['id'], 
                        'soluong'=>$cart_item['soluong'], 
                        'giasp'=>$cart_item['giasp'],
                        'hinhanh'=>$cart_item['hinhanh'],
                        'masp'=>$cart_item['masp']
                    ];
                }
                $_SESSION['cart'] = $product;
            }
        }
        header('Location:../../index.php?quanly=giohang');
    }
    // xoa san pham
    if(isset($_SESSION['cart'])&& isset($_GET['xoa'])) {
        $id=$_GET['xoa'];
        foreach($_SESSION['cart'] as $cart_item){
            if($cart_item['id']!=$id){
                $product[]= [
                    'tensanpham'=> $cart_item['tensanpham'],
                    'id'=>$cart_item['id'], 
                    'soluong'=>$cart_item['soluong'], 
                    'giasp'=>$cart_item['giasp'],
                    'hinhanh'=>$cart_item['hinhanh'],
                    'masp'=>$cart_item['masp']
                ];
            }
        $_SESSION['cart'] = $product;
        header('Location:../../index.php?quanly=giohang');
        }
    }
    // xoa tat ca
    if(isset($_GET['xoatatca'])&&$_GET['xoatatca']==1) {
        unset($_SESSION['cart']);
        header('Location:../../index.php?quanly=giohang');
    }
    // them san pham vao gio hang 
    if (isset($_POST['themgiohang'])) {
        // session_destroy();
        $id=$_GET['idsanpham'];
        $sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham='".$id."' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        $row = mysqli_fetch_array($query);
        if($row){
            $new_product = [
                'tensanpham' => $row['tensanpham'],
                'id'=>$id, 
                'soluong'=>1, 
                'giasp'=>$row['giasp'],
                'hinhanh'=>$row['hinhanh'],
                'masp'=>$row['masp'] 
            ];
            //kiem tra session gio hang ton tai
            if(!empty($_SESSION['cart'])) {
                $found = false;
                foreach($_SESSION['cart'] as $key => $cart_item){
                    $soluong = $cart_item['soluong'];
                    //nếu dữ liệu trùng 
                    if($cart_item['id']==$id) {
                        $product[]= [
                            'tensanpham'=>$cart_item['tensanpham'],
                            'id'=>$cart_item['id'], 
                            'soluong'=>$soluong+1, 
                            'giasp'=>$cart_item['giasp'],
                            'hinhanh'=>$cart_item['hinhanh'],
                            'masp'=>$cart_item['masp']
                        ];
                        $found = true;
                    } else {
                        // nếu dữ liệu ko trùng
                        $product[]= [
                            'tensanpham'=> $cart_item['tensanpham'],
                            'id'=>$cart_item['id'], 
                            'soluong'=>$soluong, 
                            'giasp'=>$cart_item['giasp'],
                            'hinhanh'=>$cart_item['hinhanh'],
                            'masp'=>$cart_item['masp']
                        ];
                    } 
                }
                if($found == false){
                    // liên kết dữ liệu new_product với product
                    // thêm mới sản phẩm do không có sản phẩm trùng
                    $product[] = $new_product;
                }
                $_SESSION['cart']= $product;
            } else{
                $_SESSION['cart'][] = $new_product;
            }
        }
        header('Location:../../index.php?quanly=giohang');
    }
?>
