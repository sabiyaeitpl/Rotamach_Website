<?php 
   include('layout/app.php');
   $res=mysqli_query($con,"select * from admin_users where id='1'");
   $row = mysqli_fetch_assoc($res);

?>



    <!-- Carousel Start -->
    <div class="container-fluid p-0 margin_munus_top">
        <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel" data-aos="fade-up">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/inner_bg.png" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3 carousel_text">
                            <h3 class="display-3 text-white bold text-uppercase m-0 p-0">Contact Us</h3>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Carousel End -->

    <div class="container-fluid bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 text-left mb-3 mb-lg-0">
                    <div class="d-inline-flex text-left">
                        <h1 class="flaticon-office font-weight-normal text-primary m-0 mr-3"></h1>
                        <div class="d-flex flex-column">
                            <h5>Our Office</h5>
                            <p class="m-0"><?php echo $row['address'] ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-left text-lg-center mb-3 mb-lg-0">
                    <div class="d-inline-flex text-left">
                        <h1 class="flaticon-email font-weight-normal text-primary m-0 mr-3"></h1>
                        <div class="d-flex flex-column">
                            <h5>Email Us</h5>
                            <p class="m-0"><?php echo $row['comp_email'] ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-left text-lg-right mb-3 mb-lg-0">
                    <div class="d-inline-flex text-left">
                        <h1 class="flaticon-telephone font-weight-normal text-primary m-0 mr-3"></h1>
                        <div class="d-flex flex-column">
                            <h5>Call Us</h5>
                            <p class="m-0"> <?php echo $row['phone'] ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid bg-white contact_address">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="d-flex flex-column justify-content-center bg-dark h-100 p-5">
                        <div class="d-inline-flex border border-white p-4 mb-4">
                            <h1 class="flaticon-office font-weight-normal text-white m-0 mr-3"></h1>
                            <div class="d-flex flex-column">
                                <h4 class="text-white">Our Office</h4>
                                <p class="m-0 text-white">
                                <?php echo $row['address'] ?>
                                </p>
                            </div>
                        </div>
                        <div class="d-inline-flex border border-white p-4 mb-4">
                            <h1 class="flaticon-email font-weight-normal text-white m-0 mr-3"></h1>
                            <div class="d-flex flex-column">
                                <h4 class="text-white">Email Us</h4>
                                <p class=" m-0 text-white"><?php echo $row['comp_email'] ?></p>
                            </div>
                        </div>
                        <div class="d-inline-flex border border-white p-4">
                            <h1 class="flaticon-telephone font-weight-normal text-white m-0 mr-3"></h1>
                            <div class="d-flex flex-column">
                                <h4 class="text-white">Call Us</h4>
                                <p class=" m-0 text-white"><?php echo $row['phone'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-5 my-lg-5 py-5 pl-lg-5">
                    <div class="contact-form">
                        <div id="success"></div>
                        <form action="index.php" method="post">
                            <div class="control-group">
                                <input type="text" name="name" class="form-control p-4" id="name" placeholder="Your Name"
                                    required="required" data-validation-required-message="Please enter your name">
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control p-4" id="phone" placeholder="Phone number"
                                name="phone" data-validation-required-message="Please enter your phone number">
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="email" name="email" class="form-control p-4" id="subject" placeholder="Email"
                                    required="required" data-validation-required-message="Please enter your email">
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <textarea class="form-control p-4" name="message" rows="6" id="message" placeholder="Message"
                                    required="required"
                                    data-validation-required-message="Please enter your message"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
       <!--                     <div class="g-recaptcha" -->
       <!--data-sitekey="6LcPNOMpAAAAAFajZ4SyNlFmaKSjsSttnedtJEFa" data-callback="formSubmit"></div>-->
                            <div>
                                <button class="btn btn-primary py-3 px-5" type="submit" name="enquiry" id="sendMessageButton">Send
                                    Message</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php
        include('layout/footer.php');
    ?>