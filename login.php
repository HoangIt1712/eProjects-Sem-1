<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/Login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
	<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/responsive.css">
    <title>Login</title>
</head>
<body>
    <body>
    <?php include("html/head.php"); ?>

        <form action="controlLogin.php" method="post">
            <div class="box">
                <div class="container">
                    <div class="top-header">
                        <header>Login</header>
                    </div>

                    <?php if (isset($_GET['error'])) { ?>
     		            <p style="color: red; font-size: small" class="error"><?php echo $_GET['error']; ?></p>
     	            <?php } ?>

                    <div class="input-field">
                        <input type="text" class="input" placeholder="Username" name="username" >
                        <i class="bx bx-user"></i>
                    </div>
                    
                    <div class="input-field">
                        <input type="password" class="input" placeholder="Password" name="password" >
                        <i class="bx bx-lock-alt"></i>
                    </div>
                    
                    <div class="input-field">
                        <!-- <a class="sign" type="submit">Submit</a> -->
                        <button class="sign" type="submit">Login</button>
                    </div>
                    
                    <div class="bottom">
                        <div class="right">
                            <label><a href="RegisterPage.php">Register now</a></label>
                        </div>
                    </div>
                </div>
            </div>
        </form>
      </body>
</body>
</html>