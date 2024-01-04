<?php
   include 'layout/head.php';

   $sql="SELECT * FROM career";
   $res=mysqli_query($con,$sql);
   $carrerCount = mysqli_num_rows($res);

   $sql="SELECT * FROM enquiry";
   $res=mysqli_query($con,$sql);
   $enquiryCount = mysqli_num_rows($res);

   $sql="SELECT * FROM emailtable";
   $res=mysqli_query($con,$sql);
   $joinusCount = mysqli_num_rows($res);

   ?>
<main>
   <div class="container-fluid">

      <div class="row">
         <div class="col-lg-4">
            <div class="card mb-4 progress-banner">
               <div class="card-body justify-content-between d-flex flex-row align-items-center">
                  <div>
                     <i class="iconsminds-clock mr-2 text-white align-text-bottom d-inline-block"></i>
                     <div>
                        <p class="lead text-white">Career Application (<?php echo $carrerCount ?>)</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-4">
            <div class="card mb-4 progress-banner">
               <div class="card-body justify-content-between d-flex flex-row align-items-center">
                  <div>
                     <i class="iconsminds-male mr-2 text-white align-text-bottom d-inline-block"></i>
                     <div>
                        <p class="lead text-white">Join Us (<?php echo $enquiryCount ?>)</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-4">
            <div class="card mb-4 progress-banner">
               <a href="#" class="card-body justify-content-between d-flex flex-row align-items-center">
                  <div>
                     <i class="iconsminds-bell mr-2 text-white align-text-bottom d-inline-block"></i>
                     <div>
                        <p class="lead text-white">Enquiry (<?php echo $joinusCount ?>)</p>
                     </div>
                  </div>
               </a>
            </div>
         </div>
      </div>
  
 </div>
</main>
<?php
   include 'layout/footer.php';
   ?>