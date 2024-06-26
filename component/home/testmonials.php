<?php
    
    $query =  mysqli_query($con,"SELECT * FROM `testimonials` WHERE `status`=1 order by id ASC");
    
 ?>

<!-- Testimonial Start -->
<section class="para1 position-relative mt-5 text-center pt-5 pb-5"
        style="background-image: url(img/tetimonial_bg.jpg);" data-aos="fade-up">
        <div class="container-fluid">
            <div class="container">
                <div class="row mt-4">
                    <h2 class="text-white">Feedback From Our Clients</h2>
                    <p class="text-white">Letraset sheets containing Lorem Ipsum passages, and more
                        recently with desktop publishing software</p>
                </div>
                <div class="row mt-5">
                    <div class="col-md-12 col-sm-12 p-0 py-sm-12">
                        <div class="owl-carousel team-carousel position-relative p-0">
                        <?php while ($row = mysqli_fetch_assoc($query)) { ?>
                            <div class="team d-flex flex-column text-center mx-3">
                                <div class="position-relative">
                                    <div class="img_client rounded-circle">
                                        <img class="img-fluid" src="<?php echo TESTIMONIALS_IMAGE_SITE_PATH . $row['image']; ?>" alt="">
                                    </div>
                                </div>
                                <div class="d-flex flex-column text-center py-3">
                                    <h5 class="text-white"><?php echo $row['name'] ?></h5>
                                    <div>
                                        <span class="material-symbols-outlined text-danger">
                                            star
                                        </span>
                                        <span class="material-symbols-outlined text-danger">
                                            star
                                        </span>
                                        <span class="material-symbols-outlined text-danger">
                                            star
                                        </span>
                                        <span class="material-symbols-outlined text-danger">
                                            star
                                        </span>
                                        <span class="material-symbols-outlined text-danger">
                                            star_half
                                        </span>
                                    </div>
                                    <p class="m-0 text-white"><?php echo $row['description'] ?>
                                    </p>
                                </div>
                            </div>
                        <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Testimonial End -->