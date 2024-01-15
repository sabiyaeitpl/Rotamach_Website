<?php 
   include('layout/app.php');
   $product_nav = mysqli_query($con,"SELECT * FROM `products` where status=1");
?>


    <!-- Carousel Start -->
    <div class="container-fluid p-0 margin_munus_top">
        <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel" data-aos="fade-up">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/inner_bg.png" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3 carousel_text">
                            <h3 class="display-3 text-white bold text-uppercase m-0 p-0">Our Products</h3>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- Projects Start -->
    <div class="container-fluid">
        <div class="container py-5" data-aos="fade-up">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col text-center mb-4">
                    <h6 class="text-primary font-weight-normal text-uppercase mb-3 bold">Our Projects</h6>
                    <h1 class="mb-4">Some Of Our Awesome Designing Product</h1>
                </div>
            </div>
            <div class="row">
            <?php
               while ($row_product = mysqli_fetch_assoc($product_nav)) { 
                $encodedId = base64_encode($row_product['id']);
            ?>
                <div class="col-lg-4 col-md-6 col-sm-12 p-0 portfolio-item first">
                    <div class="position-relative overflow-hidden m-2">
                        <div class="portfolio-img d-flex align-items-center justify-content-center">
                            <img class="img-fluid" src="<?php echo PRODUCT_IMAGE_SITE_PATH.$row_product['image'] ?>" alt="<?php echo $row_product['name'] ?>">
                        </div>
                        <div
                            class="portfolio-text bg-secondary d-flex flex-column align-items-center justify-content-center">
                            <h4 class="text-white mb-4"><?php echo $row_product['name'] ?></h4>
                            <div class="d-flex align-items-center justify-content-center">
                                <a class="btn btn-outline-primary m-1" href="product_details.php?id=<?php echo $encodedId; ?>">
                                    <i class="fa fa-link"></i>
                                </a>
                                <a class="btn btn-outline-primary m-1" href="<?php echo PRODUCT_IMAGE_SITE_PATH.$row_product['image'] ?>" data-lightbox="portfolio">
                                    <i class="fa fa-eye"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            <?php } ?>

            </div>
        </div>
    </div>
    <!-- Projects End -->


    <?php
        include('layout/footer.php');
    ?>