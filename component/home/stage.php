<?php
    $query =  mysqli_query($con,"SELECT * FROM `stage` order by id ASC");  
?>
  <section class="mt-5 mb-5">
        <div class="container">
            <div class="row">
            <?php while ($row = mysqli_fetch_assoc($query)) { ?>
                <div class="col-lg-4 col-sm-12 mt-4" data-aos="fade-up">
                    <div class="bg-white shadow-sm p-4">
                        <div class="icon2 mb-3"><img class="img-fluid" src="img/<?php echo $row['image'] ?>" alt="" /></div>
                        <h4><?php echo $row['heading'] ?></h4>
                        <p><?php echo $row['content'] ?></p>
                        <a href="" class="btn btn-danger py-md-3 px-md-5 mt-2 mt-md-4">Read More</a>
                    </div>
                </div>
            <?php } ?>
            </div>
        </div>
    </section>
    <!-- Team End -->