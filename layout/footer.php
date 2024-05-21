   <?php 
       $res=mysqli_query($con,"select * from admin_users where id='1'");
       $row = mysqli_fetch_assoc($res);


     
        if (isset($_POST['emailsubmit'])) {
            $email = $con->real_escape_string($_POST['email']);
            $checkEmailQuery = "SELECT COUNT(*) AS emailCount FROM emailtable WHERE email = '$email'";
            $result = $con->query($checkEmailQuery);

            if ($result === FALSE) {
                echo '<script>alert("Error: ' . $con->error . '"); window.location.href = "index.php";</script>';
                exit();
            }

            $row = $result->fetch_assoc();
            $emailCount = $row['emailCount'];

            if ($emailCount > 0) {
                echo '<script>alert("Email already exists!"); window.location.href = "index.php";</script>';
                exit();
            }
            $insertEmailQuery = "INSERT INTO emailtable (email) VALUES ('$email')";
            
            if ($con->query($insertEmailQuery) === TRUE) {
                echo '<script>alert("Email inserted successfully!"); window.location.href = "index.php";</script>';
                exit();
            } else {
                echo '<script>alert("Error: ' . $con->error . '"); window.location.href = "index.php";</script>';
                exit();
            }
        }

   ?>
   
   <!-- Footer Start -->
   <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KH4RZRZL"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
   <div class="bg-dark text-white footer_bar" data-aos="fade-up">
        <div class="container">
            <div class="row pt-5">
                <div class="col-lg-4 col-md-6 mb-5">
                    <div class="mb-2">
                        <img width="300px" class="img-fluid" src="img/footer_logo.png" alt="" />
                    </div>
                    <p><?php echo $row['message'] ?></p>
                    <div class="d-flex justify-content-start mt-4 footer_social">
                        <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0"
                            style="width: 38px; height: 38px;" href="<?php echo $row['twitter_link'] ?>" target="_blank"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0"
                            style="width: 38px; height: 38px;" href="<?php echo $row['facebook_link'] ?>" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0"
                            style="width: 38px; height: 38px;" href="<?php echo $row['google_link'] ?>" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0"
                            style="width: 38px; height: 38px;" href="<?php echo $row['instagram_link'] ?>" target="_blank"><i class="fab fa-instagram"></i></a>
                            <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0"
                            style="width: 38px; height: 38px;" href="<?php echo $row['youtube_link'] ?>" target="_blank"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 mb-5">
                    <h4 class="text-primary mb-4">Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-white mb-2" href="/"><i class="fa fa-angle-right mr-3"></i>Home</a>
                        <a class="text-white mb-2" href="about_us.php"><i class="fa fa-angle-right mr-3"></i>About Us</a>
                        <a class="text-white mb-2" href="products.php"><i class="fa fa-angle-right mr-3"></i>Product</a>
                        <a class="text-white" href="contact_us.php"><i class="fa fa-angle-right mr-3"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h4 class="text-primary mb-4">Connect Us</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <p><a href="mailto:<?php echo $row['comp_email'] ?>"><?php echo $row['comp_email'] ?></a></p>
                        <p>
                          <?php echo $row['address'] ?>
                            <br />
                            <?php echo $row['phone'] ?>
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <div class="bg-danger newsletter_col text-center">
                        <h4 class="text-white mb-4 bold">JOIN US</h4>
                        <form action="" method="post">
                            <div class="form-group">
                                <input type="email" name="email" class="form-control border-0" placeholder="Your Email"
                                    required="required" />
                            </div>
                            <div>
                                <button class="btn btn-lg btn-dark btn-block" type="submit" name="emailsubmit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="container border-top border-secondary pt-2 text-center">
            <p class="m-0 text-center text-white">copyright <?php echo date('Y') ?> <?php echo $row['full_name']; ?>. All Rights Reserved</p>
            <a href="privacy.php" class="m-2" target="_blank">Privacy Policy</a>
            <a href="privacy_rights.php" class="m-2" target="_blank">My Privacy Rights</a>
            <a href="terms.php" class="m-2" target="_blank">Terms of Us</a>
        </div>
    </div>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

    <?php
         include('script.php');
    
    ?>