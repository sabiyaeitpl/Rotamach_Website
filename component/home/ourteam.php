<?php
    $query =  mysqli_query($con,"SELECT * FROM `ourteam` WHERE `status`=1 order by id ASC");  
?>
 
 <!-- Team Start -->
 <div class="container-fluid bg-light">
        <div class="container" data-aos="fade-up">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="py-3 px-4 h-100 bg-dark d-flex flex-column align-items-center justify-content-center">
                        <h6 class="text-white font-weight-normal text-uppercase mb-3 bold">Our Team</h6>
                        <h1 class="mb-0 text-center text-white bold">Meet Our Team Members</h1>
                    </div>
                </div>
                <div class="col-md-8 col-sm-6 p-0 py-sm-5">
                    <div class="owl-carousel team-carousel position-relative p-0 py-sm-5">
                    <?php while ($row = mysqli_fetch_assoc($query)) { ?>
                        <div class="team d-flex flex-column text-center mx-3">
                            <div class="position-relative">
                                <img class="img-fluid w-100" src="<?php echo TEAM_IMAGE_SITE_PATH . $row['image']; ?>" alt="">
                            </div>
                            <div class="d-flex flex-column bg-danger text-center py-3">
                                <h5 class="text-white"><?php echo $row['name'] ?></h5>
                                <p class="m-0 text-white"><?php echo $row['designation'] ?></p>
                            </div>
                        </div>
                    <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->