<?php 
    $check = $_GET['rp'];
    // if ($check == "success") {
    //     echo "<center>Register Successfull! <br> <a href='index.php'>Go back and login with your account</a></center>";
    // }else{
    //     echo "<center>Register Failed! <br> Wrong Token</center>";
    // }

 ?>

 <!DOCTYPE html>
<?php include 'includes/check_reply.php'; ?>
<html>
    
<head>

        <title>Said Institute | Login</title>
        
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta charset="UTF-8">
        <meta name="description" content="Said Institute" />
        <meta name="keywords" content="Said Institute" />
        <meta name="author" content="Muh Fauzan Bakri" />

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
        <link href="assets/plugins/pace-master/themes/blue/pace-theme-flash.css" rel="stylesheet"/>
        <link href="assets/plugins/uniform/css/uniform.default.min.css" rel="stylesheet"/>
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/fontawesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/line-icons/simple-line-icons.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/offcanvasmenueffects/css/menu_cornerbox.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/waves/waves.min.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/3d-bold-navigation/css/style.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/images/icon.png" rel="icon">
        <link href="assets/css/modern.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/themes/green.css" class="theme-color" rel="stylesheet" type="text/css"/>
        <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
         <link href="assets/css/snack.css" rel="stylesheet" type="text/css"/>
        <script src="assets/plugins/3d-bold-navigation/js/modernizr.js"></script>
        <script src="assets/plugins/offcanvasmenueffects/js/snap.svg-min.js"></script>
        
    </head>
     <body class="page-login">
    
        <main class="page-content">

            <div class="page-inner">
            
                <div id="main-wrapper">
                    <div class="row">
                        <div class="col-md-4 center">
                            <div class="login-box">
                            <center><img src="kashipara.png" alt="" height="100" style="margin-bottom: 30px">
                                <a class="logo-name text-lg text-center">Online Examination System</a><br>
                                <?php 
                                if ($check == "success") {
                                    echo "<center><p class='logo-name text-lg text-center'>Registration Successfull!<br></p>To Activate Account, Please Check Your Email.<br> We Send an Email Activation to You</center><br>";
                                }else{
                                    echo "<center><p class='logo-name text-lg text-center'>Registration Failed! <br></p> Wrong Token<br><br></center><br>";
                                }?>
                                    <a type="button" href="./" class="btn btn-success"> Back to Login Page</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
			<?php if ($ms == "1") {
?> <div class="alert alert-success" id="snackbar"><?php echo "$description"; ?></div> <?php	
}else{
	
}
?>

        <script src="assets/plugins/jquery/jquery-2.1.4.min.js"></script>
        <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="assets/plugins/pace-master/pace.min.js"></script>
        <script src="assets/plugins/jquery-blockui/jquery.blockui.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/switchery/switchery.min.js"></script>
        <script src="assets/plugins/uniform/jquery.uniform.min.js"></script>
        <script src="assets/plugins/offcanvasmenueffects/js/classie.js"></script>
        <script src="assets/plugins/waves/waves.min.js"></script>
        <script src="assets/js/modern.min.js"></script>
        		<script>
function myFunction() {
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>
    </body>

</html>