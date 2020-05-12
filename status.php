<?php 
    $check = $_GET['rp'];
    if ($check == "success") {
        echo "<center>Register Successfull! <br> <a href='index.php'>Go back and login with your account</a></center>";
    }else{
        echo "<center>Register Failed! <br> Wrong Token</center>";
    }

 ?>