<?php
    $query =  mysqli_query($con,"SELECT * FROM `client` WHERE `status`=1 and client_type='overseas' and id not in(31,32) order by id Desc");  
    $query3 =  mysqli_query($con,"SELECT * FROM `client` WHERE `status`=1 and client_type='domestic' and id not in(31,32) order by id Desc");  
?>

    <!-- About Start -->
    <div class="container-fluid bg-light mt-3">
        <div class="container">
            <div class="row">
                <div class="card p-0 m-0 mb-4 client_div shadow">
                    <div class="card-header bg-white">
                        <h4 class="text-dark mb-0 text-uppercase"><b>Overseas Clients</b></h4>
                    </div>
                    <div class="bg-white p-3">
                        <div class="bg-white p-3  client_images">
                    <?php while ($row = mysqli_fetch_assoc($query)) { ?>
                        <a href="#">
                            <img src="<?php echo CLIENT_IMAGE_SITE_PATH.$row['image'] ?>" alt="" />
                        </a>
                    <?php } ?>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
    
    <!-- About Start -->
    <div class="container-fluid bg-light mt-3">
        <div class="container" data-aos="fade-up">
            <div class="row">
                <div class="card p-0 m-0 mb-4 client_div shadow">
                    <div class="card-header bg-white">
                        <h4 class="text-dark mb-0 text-uppercase"><b>Domestic Clients</b></h4>
                    </div>
                    <div class="bg-white p-3 client_images">
                        <?php while ($row = mysqli_fetch_assoc($query3)) { ?>
                        <a href="#">
                            <img src="<?php echo CLIENT_IMAGE_SITE_PATH.$row['image'] ?>" alt="" />
                        </a>
                    <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


