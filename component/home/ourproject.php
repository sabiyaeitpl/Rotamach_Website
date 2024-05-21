<?php
    $query =  mysqli_query($con,"SELECT * FROM `ourproject` WHERE `status`=1 order by id DESC");   
 ?>
 <!-- Projects Start -->
 <div class="container-fluid">
        <div class="container py-5" data-aos="fade-up">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col text-center mb-4">
                    <h6 class="text-primary font-weight-normal text-uppercase mb-3 bold">Our Products</h6>
                    <h1 class="mb-4">Some Of Our Awesome Designing Products</h1>
                </div>
            </div>
            <div class="row">
                <?php while ($row = mysqli_fetch_assoc($query)) { ?>
                    <div class="col-lg-4 col-md-6 col-sm-12 p-0 portfolio-item first">
                        <div class="position-relative overflow-hidden">
                            <div class="portfolio-img d-flex align-items-center justify-content-center">
                                <img class="img-fluid" src="<?php echo PROJECT_IMAGE_SITE_PATH . $row['image']; ?>" alt="">
                            </div>
                            <div
                                class="portfolio-text bg-secondary d-flex flex-column align-items-center justify-content-center">
                                <h4 class="text-white mb-4"><?php echo $row['heading']; ?></h4>
                                <div class="d-flex align-items-center justify-content-center">
                                    <!-- <a class="btn btn-outline-primary m-1" href="">
                                        <i class="fa fa-link"></i>
                                    </a> -->
                                    <a class="btn btn-outline-primary m-1" href="<?php echo PROJECT_IMAGE_SITE_PATH . $row['image']; ?>" data-lightbox="portfolio">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                
                <div class="text-center"><a href="products.php" class="btn btn-primary py-md-3 px-md-5 mt-2 mt-md-4">View Our Product</a></div>
            </div>
        </div>
    </div>
    <!-- Projects End -->