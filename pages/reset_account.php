<?php
include '../includes/uniques.php';
include '../database/config.php';
$myid = mysqli_real_escape_string($conn, $_POST['user']);

$sql = "SELECT * FROM tbl_users WHERE user_id = '$myid' OR email = '$myid'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
$myuserid = $row['user_id'];
$myemail = $row['email'];
$myfname = $row['first_name'];
$mylname = $row['last_name'];
$myfullname = "$myfname $mylname";
$new_password = get_rand_alphanumeric(10);
$encpass = md5($new_password);
$sql = "UPDATE tbl_users SET login='$encpass' WHERE user_id='$myuserid'";

if ($conn->query($sql) === TRUE) {

$myvar = file_get_contents('content.php');  
$message = str_replace("passssssssssssssswwwwwwwwoooorrrrdddddddd", $new_password, $myvar);
require '../mail/PHPMailerAutoload.php';

$mail = new PHPMailer;
                          

$mail->isSMTP();                                      
$mail->Host = 'smtp.gmail.com';
$mail->SMTPAuth = true;                               
$mail->Username = 'fzn110120@gmail.com';           
$mail->Password = 'Th1s1smyp4ss';                         
$mail->SMTPSecure = 'tls';                            
$mail->Port = 587;                                   

$mail->setFrom('fzn110120@gmail.com', 'Admin');
$mail->addAddress($myemail , $myfullname);              
$mail->addReplyTo('fzn110120@gmail.com', 'Admin');
   
$mail->isHTML(true);                                 

$mail->Subject = 'Said Institute Password Reset';
$mail->Body    = $message;
$mail->AltBody = $message;

if(!$mail->send()) {

} else {
header("location:../forgot_pw.php?rp=1804");
}


} else {
header("location:../forgot_pw.php?rp=1100");
}

	
    }
} else {
header("location:../forgot_pw.php?rp=8924");
}
$conn->close();






