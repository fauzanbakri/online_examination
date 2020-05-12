<?php
date_default_timezone_set('Asia/Makassar');
include '../../database/config.php';
include '../../includes/uniques.php';
if ($_POST['code'] == 'sipencatar1'){
	$code = 'S1-';
}else if ($_POST['code'] == 'sipencatar2'){
	$code = 'S2-';
}else{
	$code = 'EX-';
}
$exam_id = $code.get_rand_numbers(6).'';
$exam = ucwords(mysqli_real_escape_string($conn, $_POST['exam']));
$duration = mysqli_real_escape_string($conn, $_POST['duration']);
$passmark = mysqli_real_escape_string($conn, $_POST['passmark']);
$passmark_mm = mysqli_real_escape_string($conn, $_POST['passmark_mm']);
$passmark_eng = mysqli_real_escape_string($conn, $_POST['passmark_eng']);
$passmark_phy = mysqli_real_escape_string($conn, $_POST['passmark_phy']);
$attempts = mysqli_real_escape_string($conn, $_POST['attempts']);
$date = mysqli_real_escape_string($conn, $_POST['date']);
$subject = mysqli_real_escape_string($conn, $_POST['subject']);
$category = mysqli_real_escape_string($conn, $_POST['category']);
$terms = ucfirst(mysqli_real_escape_string($conn, $_POST['instructions']));

$sql = "SELECT * FROM tbl_examinations WHERE exam_name = '$exam' AND subject = '$subject' AND category = '$category'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
header("location:../examinations.php?rp=1185");
    }
} else {

$sql = "INSERT INTO tbl_examinations (exam_id, category, subject, exam_name, date, duration, passmark, passmark_mm, passmark_eng, passmark_phy, re_exam, terms)
VALUES ('$exam_id', '$category', '$subject', '$exam', '$date', '$duration', '$passmark', '$passmark_mm', '$passmark_eng', '$passmark_phy', '$attempts', '$terms')";

if ($conn->query($sql) === TRUE) {
header("location:../examinations.php?rp=2932");
} else {
header("location:../examinations.php?rp=7788");
}


}
$conn->close();
?>
