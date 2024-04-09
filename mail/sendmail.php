<?php
include "PHPMailer/src/PHPMailer.php";
include "PHPMailer/src/Exception.php";
require_once 'PHPMailer/src/Exception.php';
require_once 'PHPMailer/src/PHPMailer.php';
require_once 'PHPMailer/src/SMTP.php';
 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
class Mailer{
    public function dathangmail($tieude,$noidung, $maildathang) {
        $mail = new PHPMailer(true);
        try {
            //Server settings
            $mail->IsSMTP();                                      // Set mailer to use SMTP
            $mail->SMTPDebug = 0;                                 // Enable verbose debug output
            $mail->CharSet= 'UTF-8';
            $mail->Host = 'smtp.gmail.com';                       // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = '0989066517zz@gmail.com';          // SMTP username
            $mail->Password = 'dggl pxxc eohp hjbb';                                 // SMTP password
            $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;                                    // TCP port to connect to
        
            //Recipients
            $mail->From = '0989066517zz@gmail.com';
            $mail->FromName = 'danh';
            $mail->AddAddress('danhmcno1@gmail.com');
            $mail->AddReplyTo('danhmcno1@gmail.com', 'Information');

            $mail->addAddress($maildathang, 'Danh Bùi');     // Add a recipient    
            // Name is optional
            // $mail->addReplyTo('info@example.com', 'Information');
            $mail->addCC('0989066517zz@gmail.com');
            // $mail->addBCC('bcc@example.com');
        
            // //Attachments
            // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
            // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
        
            //Content
            $mail->IsHTML(true);                                  // Set email format to HTML
            $mail->Subject = $tieude;
            $mail->Body    = $noidung;
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
        
            $mail->send();
            echo 'Message has been sent';
        } catch (Exception $e) {
            echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
        }
    }
}
?>