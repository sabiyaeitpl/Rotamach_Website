
<?php 
   $page_name="design";
   include('layout/app.php');
?>


    <!-- Carousel Start -->
    <div class="container-fluid p-0 margin_munus_top">
        <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel" data-aos="fade-up">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/inner_bg.png" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3 carousel_text">
                            <h3 class="display-3 text-white bold text-uppercase m-0 p-0">Design</h3>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Carousel End -->

     
    <?php 
         include('component/design/design.php');
    ?>


    <?php
        include('layout/footer.php');
    ?>