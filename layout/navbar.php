<?php 
     $query =  mysqli_query($con,"SELECT * FROM `bulletian`");
     $row = mysqli_fetch_assoc($query);
     $content = $row['description'];
  ?>
 
 <!-- Navbar Start -->
 <header class="nav-down">
        <div class="bg-white logo_main">
            <div class="container">
                <div class="row">
                    <div class="text-center logo_section">
                        <a href="index.php"><img class="img-fluid" src="img/logo.png" /></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid position-relative nav-bar p-0 margin_munus_top2 bg-dark">
            <div class="container position-relative" style="z-index: 9;">
                <nav class="navbar navbar-expand-lg navbar-dark py-3 py-lg-0 pl-3 pl-lg-5">
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="img_logo responsive_logo">
                        <img class="img-fluid" src="img/logo_img.png" alt="" />
                    </div>
                    <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                        <div class="navbar-nav py-0">
                            <a href="index.php" class="nav-item nav-link active m">Home</a>
                            <a href="about_us.php" class="nav-item nav-link">About Us</a>
                            <div class="nav-item dropdown">
                                <a href="products.php" class="nav-link dropdown-toggle" data-toggle="dropdown">Products</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <?php
                                       $product_nav = mysqli_query($con,"SELECT * FROM `products` where status=1");
                                       while ($row_product = mysqli_fetch_assoc($product_nav)) { 
                                         $encodedId = base64_encode($row_product['id']);
                                        ?>
                                           <a href="product_details.php?id=<?php echo $encodedId; ?>" class="dropdown-item"><?php echo $row_product['name'] ?></a>
                                     <?php   }
                                    ?>
                                </div>
                            </div>
                            <a href="#" class="nav-item nav-link" data-toggle="modal"
                                data-target="#exampleModal">Career</a>
                            <a href="design.php" class="nav-item nav-link">Design</a>
                            <a href="clients.php" class="nav-item nav-link">Clients</a>
                            <a href="#" class="nav-item nav-link" data-toggle="modal"
                                data-target="#exampleModal2">Enquiry</a>
                            <a href="contact_us.php" class="nav-item nav-link">Contact Us</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <div class="marq">
            <div class="container">
                <div class="row">
                    <p class="m-0 d-flex"><b class="text-uppercase text-danger font-bold fw-bold mr-2">Bulletin:</b>
                        <marquee direction="left" onMouseOver="this.stop()" onMouseOut="this.start()"><span>
                             <?php echo $content ?>
                        </marquee>
                    </p>
                </div>
            </div>
        </div>
        <!-- Navbar End -->
    </header>
