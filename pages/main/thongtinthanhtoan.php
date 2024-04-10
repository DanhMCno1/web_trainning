<p>Hình thức thanh toán</p>
<div class="container">
  <!-- Responsive Arrow Progress Bar -->
  <div class="arrow-steps clearfix">
    <div class="step done"> <span> <a href="index.php?quanly=giohang" >Giỏ hàng</a></span> </div>
    <div class="step done"> <span><a href="index.php?quanly=vanchuyen" >Vận chuyển</a></span> </div>
    <div class="step current"> <span><a href="index.php?quanly=thongtinthanhtoan" >Thanh toán</a><span> </div>
    <div class="step "> <span><a href="index.php?quanly=donhangdadat" >Lịch sử đơn hàng</a><span> </div>
  </div>
    <div class="row">
        <?php 
            $id_dangky = $_SESSION['id_khachhang'];
            $sql_get_vanchuyen = mysqli_query($mysqli, "SELECT * FROM tbl_shipping WHERE id_dangky='$id_dangky' LIMIT 1");
            $count = mysqli_num_rows($sql_get_vanchuyen);
            if($count>0) {
              $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
              $name = $row_get_vanchuyen['name'];
              $phone = $row_get_vanchuyen['phone'];
              $address = $row_get_vanchuyen['address'];
              $note = $row_get_vanchuyen['note'];
            }else {
              $name = '';
              $phone = '';
              $address = '';
              $note = '';
            }
            ?>
      <div class="col-md-8">
          <h4>Thông tin vận chuyển và giỏ hàng</h4>
          <ul>
            <li>Họ và tên vận chuyển: <b><?php echo $name?></b></li>
            <li>Số điện thoại <b><?php echo $phone?></b></li>
            <li>Địa chỉ <b><?php echo $address?></b></li>
            <li>Ghi chú <b><?php echo $note?></b></li>
          </ul>

          <h4>Giỏ hàng của bạn</h4>
          <table style= "width:100%; text-align:center; border-collapse: collapse" border="1">
          <tr>
              <th>Id</th>
              <th>Mã sp</th>
              <th>Tên sản phẩm</th>
              <th>Hình ảnh</th>
              <th>Số lượng</th>
              <th>Giá sản phẩm</th>
              <th>Thành tiền</th>
          </tr>
          <?php
          if(!empty($_SESSION['cart'])) {
              $i = 0;
              $tongTien=0;
              foreach($_SESSION['cart'] as $cart_item){
                  $thanhTien= $cart_item['soluong']*$cart_item['giasp'];
                  $tongTien+=$thanhTien;
                  $i++;
          ?>
          <tr>
              <td><?php echo $i; ?></td>
              <td><?php echo $cart_item['masp']; ?></td>
              <td><?php echo $cart_item['tensanpham']; ?></td>
              <td><img src="admincp/modules/quanlysp//uploads/<?php echo $cart_item['hinhanh']; ?>" width="150px"; ></td>
              <td>
                  <a href="pages/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>"><i class="fa-solid fa-minus" style="border:1px solid #cccccc;" ></i></a>
                  <?php echo $cart_item['soluong']; ?>
                  <a href="pages/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>"><i class="fa-solid fa-plus" style="border:1px solid #cccccc;"></i></a>
              </td>

              <td><?php echo number_format($cart_item['giasp'],0,',','.').' '.'vnđ';?></td>   
              <td><?php echo number_format($thanhTien,0,',','.').' '.'vnđ';?></td>  
          </tr>
          <?php
          }
          ?>
          <tr>
              <td colspan="8" > 
                  <p style="float:left;">Tổng tiền: <?php echo number_format($tongTien,0,',','.').' '.'vnđ';?></p>
                  <div style="clear: both;"></div>
                  <?php
                      if(isset($_SESSION['dangky'])) {
                      ?>
                          <p><a href="index.php?quanly=thongtinthanhtoan">X</a></p>
                      <?php
                          }else{
                      ?>
                          <p><a href="index.php?quanly=dangky">Đăng ký đặt hàng</a></p>
                      <?php
                          }   
                      ?>
              </td>
          </tr>
          <?php
              
          }else {
          ?>
              <tr>
                  <td colspan="8"> <p>Hiện tại giỏ hàng trống</p></td>
              </tr>
          <?php
          }

          ?>
      </table>
        </div>
        <style type="text/css">
          .col-md-4.hinhthucthanhtoan .form-check {
            margin: 16px 0;
          }

        </style>
        <div class="col-md-4 hinhthucthanhtoan">
          <h4>Phương thức thanh toán</h4>
          <div class="form-check">
            <input type="radio" class="form-check-input" name="payment" id="exampleRadios1" value="option1" checked>
            <label class="form-check-label" for="exampleRadios1">
              Tiền mặt
            </label>
          </div>
          <div class="form-check">
            <input type="radio" class="form-check-input" name="payment" id="exampleRadios2" value="tienmat" checked>
            <label class="form-check-label" for="exampleRadios2">
              Chuyển khoản
            </label>
          </div>
          <div class="form-check">
            <input type="radio" class="form-check-input" name="payment" id="exampleRadios4" value="chuyenkhoan" >
            <img src="images/vnpay.jpg" height="32px" >
            <label class="form-check-label" for="exampleRadios3">
              Vnpay
            </label>
          </div>
          <div class="form-check">
            <input type="radio" class="form-check-input" name="exampleRadios" id="exampleRadios5" value="paypal" >
            <img src="images/paypal.png" height="24px" >
            <label class="form-check-label" for="exampleRadios4">
              Paypal
            </label>
          </div>


          <?php
          $tongtien = 0;
          foreach($_SESSION['cart'] as $key => $value) {
            $thanhTien = $value['soluong']*$value['giasp'];
            $tongTien += $thanhTien;
           }
          $tongTien_vnd = $tongTien;
          $tongtien_usd = round($tongtien/22667);
          ?>
          <div class="form-check">
          <input type="radio" class="form-check-input" name="redirect" id="exampleRadios3" value="momo" >
            <img src="images/momo-pay.png" width="32px" height="32px" >
            <label class="form-check-label" for="exampleRadios5">
              Momo
            </label>
          </div>
          <form action="pages/main/xulythanhtoanmomo.php" method="POST" target="_blank" enctype="application/x-ww-form-urlencoded">
          <input type="hidden" name="tongTien_vnd" value="<?php echo $tongTien_vnd?>" >
            <input type="submit" name="momo" value="Thanh toán MOMO QRcode" class="btn btn-danger">
          </form>
          <p></p>
          <form action="pages/main/xulythanhtoanmomo_atm.php" method="POST" target="_blank" enctype="application/x-ww-form-urlencoded">
          <input type="hidden" name="tongTien_vnd" value="<?php echo $tongTien_vnd?>" >
            <input type="submit" name="momo" value="Thanh toán MOMO ATM" class="btn btn-danger">
          </form>
      </div>
    </div>
