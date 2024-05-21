<?php 
   $page_name="client";
   include('layout/app.php');
   
  
    $query_client_banner1 =  mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM `client` WHERE id=31 order by id Asc")); 
    $query_client_banner2 =  mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM `client` WHERE id=32 order by id Asc"));
?>



    <!-- Carousel Start -->
    <div class="container-fluid p-0 margin_munus_top">
        <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel" data-aos="fade-up">
            <div class="carousel-inner">
                 
                    <div class="carousel-item active">
                        <img class="w-100" src="<?php echo CLIENT_IMAGE_SITE_PATH.$query_client_banner1['image']?>" alt="Image">
                    </div>
                     <div class="carousel-item ">
                        <img class="w-100" src="<?php echo CLIENT_IMAGE_SITE_PATH.$query_client_banner2['image']?>" alt="Image">
                    </div>
             
               

            </div>
            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                <div class="btn btn-primary" style="width: 45px; height: 45px;">
                    <span class="carousel-control-prev-icon mb-n2"></span>
                </div>
            </a>
            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                <div class="btn btn-primary" style="width: 45px; height: 45px;">
                    <span class="carousel-control-next-icon mb-n2"></span>
                </div>
            </a>
        </div>
    </div>
    <!-- Carousel End -->
   <?php 
     include('component/client/client.php');
   ?>
   



    <?php
        include('layout/footer.php');
    ?>