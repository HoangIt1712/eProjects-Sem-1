<?php
require_once("./functions/dbp.php");
$id = $_GET["id"];
$sql = "select * from products where id = $id";
$product = findById($sql);
if($product == null){
    header("Location: 404notfound.php");
    die();
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Categories - Bronx Luggage</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Colo Shop Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/responsive.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="css/product.css?v=<?php echo time(); ?>">
</head>

<body>

<div class="super_container">

<!-- Header -->
<?php include("html/head.php"); ?>

        <div class="main_slider" style="background-color:#e0e0e0">
            <div class="container fill_height">
                <div class="row align-items-center fill_height">
                    <div class="col">
                    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <img src="<?php echo $product['thumbnail']; ?>" class="img-fluid" alt="<?php echo $product['name']; ?>">
            </div>
            <div class="col-md-6">
                <h2><?php echo $product['NAME']; ?></h2>
                <p><strong>Price:</strong> $<?php echo number_format($product['price'], 2); ?></p>
                <p><strong>In Stock:</strong> <?php echo $product['qty']; ?></p>
                <p><strong>Description:</strong> <?php echo $product['description']; ?></p>
                    <!-- Add to Cart Button -->
                    <form method="post" action="/add_to_cart.php">
                        <div class="input-group mb-3">
                            <input type="hidden" name="id" value="<?php echo $product["id"];?>"/>
                            <input name="buy_qty" type="number" value="1" min="1" class="form-control" aria-label="Quantity">
                            <button class="btn btn-danger" type="submit">Add to cart</button>
                        </div>
                    </form>
            </div>
        </div>
    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Categories -->

        <!-- Footer -->
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