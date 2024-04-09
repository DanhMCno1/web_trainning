<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styleadmin.css">

    <title>Admincp</title>
</head>
<?php
session_start();
if(!isset($_SESSION['dangnhap'])){
    header("Location:login.php");
}
?>
<body>
    <h3 class="title_admin">Welcome to Admincp</h3>
    <div class="wrapper">
    <?php
            include("config/config.php");
            include("modules/header.php");
            include("modules/menu.php");
            include("modules/main.php");
            include("modules/footer.php");
        ?>
    </div>

     <!-- Nhúng trình soạn thảo văn bản ckeditor -->
    <script type="text/javascipt" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script>
        CKEDITOR.replace('tomtat');
        CKEDITOR.replace('noidung');
        CKEDITOR.replace('thongtinlienhe');
    </script>
   
</body> 
</html>