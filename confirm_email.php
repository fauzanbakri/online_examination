<?php
include 'database/config.php';
$sid = mysqli_real_escape_string($conn, $_GET['id']);

$sql = "UPDATE tbl_users SET acc_stat='1' WHERE auth='$sid'";

if ($conn->query($sql) === TRUE) {
    header("location:index.php");
} else {
    header("location:index.php");
}

$conn->close();
?>
    