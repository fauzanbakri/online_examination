<?php
include '../database/config.php';

error_reporting(0);
$total_questions = $_POST['tq'];


$exam_id = $_POST['eid'];
$record = $_POST['ri'];
$code = substr($exam_id, 0, 2);
// $sql = "SELECT * from tbl_examinations WHERE exam_id = '$exam_id'";
// $rest = $conn->query($sql)->fetch_assoc();
// print_r($rest['passmark'])

if ($code == 'S2') {
		$starting_mark = 1;
		$mytotal_marks = 0;

		$starting_mark2 = 1; //mm
		$mytotal_marks2 = 0;

		$starting_mark3 = 31; //pyh
		$mytotal_marks3 = 0;

		$starting_mark4 = 46; //eng
		$mytotal_marks4 = 0;

		while ($starting_mark <= $total_questions) {
		if (strtoupper(base64_decode($_POST['ran'.$starting_mark.''])) == strtoupper($_POST['an'.$starting_mark.''])) {
		$mytotal_marks = $mytotal_marks + 1;	
		}else{
			
		}
		$starting_mark++;
		}


		//----------------------
		while ($starting_mark2 <= 30) {
		if (strtoupper(base64_decode($_POST['ran'.$starting_mark2.''])) == strtoupper($_POST['an'.$starting_mark2.''])) {
		$mytotal_marks2 = $mytotal_marks2 + 1;	
		}else{
			
		}
		$starting_mark2++;
		}



		//----------------------
		while (31 <= $starting_mark3 && $starting_mark3 <= 45) {
		if (strtoupper(base64_decode($_POST['ran'.$starting_mark3.''])) == strtoupper($_POST['an'.$starting_mark3.''])) {
		$mytotal_marks3 = $mytotal_marks3 + 1;	
		}else{
			
		}
		$starting_mark3++;
		}



		//----------------------
		while ((46 <= $starting_mark4) && ($starting_mark4 <= 75)) {
		if (strtoupper(base64_decode($_POST['ran'.$starting_mark4.''])) == strtoupper($_POST['an'.$starting_mark4.''])) {
		$mytotal_marks4 = $mytotal_marks4 + 1;	
		}else{
			
		}
		$starting_mark4++;
		}
		//----------------------



		$percent_score = $mytotal_marks;
		//$percent_score = floor($percent_score);
		$percent_score2 = $mytotal_marks2;
		//$percent_score2 = floor($percent_score2);
		$percent_score3 = $mytotal_marks3;
		//$percent_score3 = floor($percent_score3);
		$percent_score4 = $mytotal_marks4;
		//$percent_score3 = floor($percent_score3);

		$passmark_mm = $_POST['pm_mm'];
		$passmark_phy = $_POST['pm_phy'];
		$passmark_eng = $_POST['pm_eng'];
		if ($percent_score2 >= $passmark_mm && $percent_score3 >= $passmark_phy && $percent_score4 >= $passmark_eng) {
		$status = "PASS";	
		}else{
		$status = "FAIL";	
		}

}else if ($code == 'S1'){
		$starting_mark = 1;
		$mytotal_marks = 0;

		$starting_mark2 = 1; //mm
		$mytotal_marks2 = 0;

		$starting_mark4 = 41; //eng
		$mytotal_marks4 = 0;

		while ($starting_mark <= $total_questions) {
		if (strtoupper(base64_decode($_POST['ran'.$starting_mark.''])) == strtoupper($_POST['an'.$starting_mark.''])) {
		$mytotal_marks = $mytotal_marks + 1;	
		}else{
			
		}
		$starting_mark++;
		}


		//----------------------
		while ($starting_mark2 <= 40) {
		if (strtoupper(base64_decode($_POST['ran'.$starting_mark2.''])) == strtoupper($_POST['an'.$starting_mark2.''])) {
		$mytotal_marks2 = $mytotal_marks2 + 1;	
		}else{
			
		}
		$starting_mark2++;
		}


		while ((41 <= $starting_mark4) && ($starting_mark4 <= 75)) {
		if (strtoupper(base64_decode($_POST['ran'.$starting_mark4.''])) == strtoupper($_POST['an'.$starting_mark4.''])) {
		$mytotal_marks4 = $mytotal_marks4 + 1;	
		}else{
			
		}
		$starting_mark4++;
		}
		//----------------------



		$percent_score = $mytotal_marks;
		//$percent_score = floor($percent_score);
		$percent_score2 = $mytotal_marks2;
		//$percent_score2 = floor($percent_score2);
		$percent_score3 = "-";
		//$percent_score3 = floor($percent_score3);
		$percent_score4 = $mytotal_marks4;
		//$percent_score3 = floor($percent_score3);

		$passmark_mm = $_POST['pm_mm'];
		$passmark_eng = $_POST['pm_eng'];

		if ($percent_score2 >= $passmark_mm && $percent_score4 >= $passmark_eng) {
		$status = "PASS";	
		}else{
		$status = "FAIL";	
		}
}else{
		$starting_mark = 1;
		$mytotal_marks = 0;


		while ($starting_mark <= $total_questions) {
		if (strtoupper(base64_decode($_POST['ran'.$starting_mark.''])) == strtoupper($_POST['an'.$starting_mark.''])) {
		$mytotal_marks = $mytotal_marks + 1;	
		}else{
			
		}
		$starting_mark++;
		}


		$percent_score = $mytotal_marks;
		//$percent_score = floor($percent_score);
		$percent_score2 = "-";
		//$percent_score2 = floor($percent_score2);
		$percent_score3 = "-";
		//$percent_score3 = floor($percent_score3);
		$percent_score4 = "-";
		//$percent_score3 = floor($percent_score3);
		$passmark = $_POST['pm'];

		if ($percent_score >= $passmark) {
		$status = "PASS";	
		}else{
		$status = "FAIL";	
		}
}





session_start();
$_SESSION['record_id'] = $record;
include '../../database/config.php';
$sql = "UPDATE tbl_assessment_records SET score='$percent_score', score_mm='$percent_score2', score_phy='$percent_score3',  score_eng='$percent_score4', status='$status' WHERE record_id='$record'";	

// print_r($sql);die();
if ($conn->query($sql) === TRUE) {

	
   header("location:../assessment-info.php");
} else {
   header("location:../assessment-info.php");
}

$conn->close();
?>
