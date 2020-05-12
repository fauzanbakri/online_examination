<?php
date_default_timezone_set('Asia/Makassar');

include '../../database/config.php';
include '../../includes/uniques.php';
$student_id = 'S'.get_rand_numbers(3).'-'.get_rand_numbers(3).'-'.get_rand_numbers(3).'';
$fname = ucwords(mysqli_real_escape_string($conn, $_POST['fname']));
$lname = ucwords(mysqli_real_escape_string($conn, $_POST['lname']));
$email = mysqli_real_escape_string($conn, $_POST['email']);
$phone = mysqli_real_escape_string($conn, $_POST['phone']);
$department = mysqli_real_escape_string($conn, $_POST['department']);
$category = mysqli_real_escape_string($conn, $_POST['category']);
$address = ucwords(mysqli_real_escape_string($conn, $_POST['address']));
$dob = mysqli_real_escape_string($conn, $_POST['dob']);
$gender = mysqli_real_escape_string($conn, $_POST['gender']);
$pass = md5(mysqli_real_escape_string($conn, $_POST['pass']));
$token = mysqli_real_escape_string($conn, $_POST['token']);
$auth = md5($student_id);



$sql = "SELECT * FROM tbl_users WHERE email = '$email' OR phone = '$phone'";
$result = $conn->query($sql);

	$sqlcheck = "SELECT * FROM tbl_token WHERE token = '$token' AND status > 0";
	$check = $conn->query($sqlcheck);
	$usedtoken = $check->fetch_assoc();
	$decreasestatus = $usedtoken['status'] - 1;
	$sqlupdatetoken = "UPDATE tbl_token set status = $decreasestatus WHERE token = '$token'";
	if ($check->num_rows > 0){
		$sql = "INSERT INTO tbl_users (user_id, first_name, last_name, gender, dob, address, email, phone, department, category, login, acc_stat, auth)
		VALUES ('$student_id', '$fname', '$lname', '$gender', '$dob', '$address', '$email', '$phone', '$department', '$category', '$pass', '0', '$auth')";
		
		$conn->query($sqlupdatetoken);
		$conn->query($sql);

		require '../../mail/PHPMailerAutoload.php';
		$link = 'http://said-institute.rf.gd/confirm_email.php?id='.$auth;
		$myvar = file_get_contents('../../content_verification.php');  
		$message = str_replace("linnnnnnkkkkkkkkkkkk", $link, $myvar);
		$mail = new PHPMailer;
		                          

		$mail->isSMTP();                                      
		$mail->Host = 'smtp.gmail.com';
		$mail->SMTPAuth = true;                               
		$mail->Username = 'fzn110120@gmail.com';           
		$mail->Password = 'Th1s1smyp4ss';                         
		$mail->SMTPSecure = 'tls';                            
		$mail->Port = 587;                                   

		$mail->setFrom('fzn110120@gmail.com', 'Admin');
		$mail->addAddress($email , $fname);              
		$mail->addReplyTo('fzn110120@gmail.com', 'Admin');
		   
		$mail->isHTML(true);                                 

		$mail->Subject = 'Said Institute Password Reset';
		$mail->Body    = $message;
		$mail->AltBody = $message;

		if (!$mail->send()){	
		
		}else{header("location:../../result.php?rp=success");}
	}else{
		header("location:../../result.php?rp=fail");
	}

echo "<script>alert(".$pass.");";
$conn->close();
?>

