<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/Login.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
	<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <title>Register</title>
</head>
<body>
    <body>
    <?php include("html/head.php"); ?>

        <form action="controlRegister.php" method="post">
            <div class="box">
                <div class="container">
                    <div class="top-header">
                        <header>Sign Up</header>
                    </div>

                    <?php if (isset($_GET['error'])) { ?>
     		            <p style="color: red; font-size: small" class="error"><?php echo $_GET['error']; ?></p>
     	            <?php } ?>

                    <?php if (isset($_GET['success'])) { ?>
                        <p style="color: green; font-size: small" class="success"><?php echo $_GET['success']; ?></p>
                    <?php } ?>

                    <div class="input-field">
                        <?php if (isset($_GET['username'])) { ?>
                            <input type="text" class="input" name="username" placeholder="Username" value="<?php echo $_GET['username']; ?>" >
                        <?php }else{ ?>
                            <input type="text" class="input" name="username" placeholder="Username">
                            <i class="bx bx-user"></i>
                        <?php }?>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="full_name" placeholder="Fullname" >
                        <i class="bx bx-user"></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="email" placeholder="Email" >
                        <i class="bx bx-user"></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="phone" placeholder="Phone" >
                        <i class="bx bx-user"></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="address" placeholder="Address" >
                        <i class="bx bx-user"></i>
                    </div>
                    
                    <div class="input-field">
                        <input type="password" class="input" name="password" placeholder="Password" >
                        <i class="bx bx-lock-alt"></i>
                    </div>
                    
                    <div class="input-field">
                        <input type="password" class="input" name="REpassword" placeholder="Re-Enter Password" >
                        <i class="bx bx-lock-alt"></i>
                    </div>
                    
                    <div class="input-field">                   
                        <button class="sign" type="submit"> Submit </button>
                    </div>
                    
                    <div class="input-field">
                        <a href="login.php">Already have an account?</a>
                    </div>
                </div>
            </div>
        </form>
                        </div>
      <?php include("html/footer.php"); ?>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
