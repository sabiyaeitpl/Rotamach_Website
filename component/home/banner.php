    <?php
    
    $query =  mysqli_query($con,"SELECT * FROM `banner` WHERE `status`=1 order by order_by ASC");
    
    ?>
    
    <!-- Carousel Start -->
    <div class="container-fluid p-0 margin_munus_top">
        <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel" data-aos="fade-up">
            <div class="carousel-inner">
            <?php while ($row = mysqli_fetch_assoc($query)) { ?>
                <div class="carousel-item active">
                    <img class="w-100" src="<?php echo BANNER_IMAGE_SITE_PATH . $row['image']; ?>" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3 carousel_text">
                            <h3 class="display-3 text-white bold text-uppercase m-0"><?php echo $row['heading1'] ?>
                            </h3>
                            <a href="<?php echo $row['btn_link'] ?>" class="btn btn-primary py-md-2 px-md-4 text-uppercase"><?php echo $row['btn_name'] ?></a>
                        </div>
                    </div>
                </div>
            <?php } ?>
            </div>
        </div>
    </div>
    <!-- Carousel End -->