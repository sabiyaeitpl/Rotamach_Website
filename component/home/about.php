  <?php 
     $query =  mysqli_query($con,"SELECT * FROM `about` WHERE `status`=1 and id=1");
     $row = mysqli_fetch_assoc($query);
     $heading1 = $row['heading1'];
     $heading2 = $row['heading2'];
     $heading3 = $row['heading3'];
     $heading4 = $row['heading4'];
     $image = CONTENT_IMAGE_SITE_PATH . $row['image'];
  ?>
  
  <!-- About Start -->
  <div class="container-fluid bg-light mt-5">
        <div class="container" data-aos="fade-up">
            <div class="row">
                <p class="d-block p-0 m-0 text-danger"><b><?php echo $heading1 ?></b>
                </p>
                <h4 class="m-0 p-0 mb-4 h1 bold"><?php echo $heading2; ?>
                </h4>
                <div class="col-lg-5">
                    <div class="position-relative me-4">
                        <img class="img-fluid" src="<?php echo $image; ?>" alt="" />
                        <div class="img_box_1 position-absolute bg-danger text-center pt-5">
                            <p class="text-white">
                                <b>Latest Solutions
                                    <span class="d-block h1 text-white bold">And</span>
                                    Decades Of</b>
                            </p>
                            <div class="years_exp">
                                <h2 class="text-white bold">25+</h2>
                                <h4 class="text-white bold">Years Experience</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 m-0 my-lg-5 pt-5 pb-5 pb-lg-2 pl-lg-5">
                    <div class="ms-5 padding_0">
                        <h6 class="text-primary font-weight-normal text-uppercase mb-3 bold"><?php echo $heading3; ?></h6>
                        <p class="mb-4 section-title"><?php echo $heading4; ?></p>
                        <div class="row py-2">
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center mb-4">
                                    <h1 class="flaticon-house font-weight-normal text-primary m-0 mr-3"></h1>
                                    <h5 class="text-truncate m-0">Product Planning</h5>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center mb-4">
                                    <h1 class="flaticon-stairs font-weight-normal text-primary m-0 mr-3"></h1>
                                    <h5 class="text-truncate m-0">Product Exterior</h5>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center mb-4">
                                    <h1 class="flaticon-office font-weight-normal text-primary m-0 mr-3"></h1>
                                    <h5 class="text-truncate m-0">Product Design</h5>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center mb-4">
                                    <h1 class="flaticon-living-room font-weight-normal text-primary m-0 mr-3"></h1>
                                    <h5 class="text-truncate m-0">Product Types</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->