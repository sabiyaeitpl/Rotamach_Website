<?php
   include 'layout/head.php';
   $title = 'Project Stage';
   $table = 'stage';
   $manage_page = 'manage_stage.php';
   if(isset($_GET['type']) && $_GET['type']!=''){
	$type=get_safe_value($con,$_GET['type']);
	if($type=='status'){
		$operation=get_safe_value($con,$_GET['operation']);
		$id=get_safe_value($con,$_GET['id']);
		if($operation=='active'){
			$status='1';
		}else{
			$status='0';
		}
		$update_status_sql="update $table set status='$status' where id='$id'";
		mysqli_query($con,$update_status_sql);
	}
	
	if($type=='delete'){
		$id=get_safe_value($con,$_GET['id']);
		$delete_sql="delete from $table where id='$id'";
		mysqli_query($con,$delete_sql);
	}
}

$sql="SELECT * FROM $table order by id asc";
$res=mysqli_query($con,$sql);
?>


<main>
        <div class="container-fluid disable-text-selection">
            <div class="row">
                <div class="col-12">
                    <div class="mb-3">
                        <h1><?php echo $title; ?></h1>
                        <!-- <div class="text-zero top-right-button-container">
                            <a href="<?php echo $manage_page; ?>"><button type="button" class="btn btn-primary btn-lg top-right-button mr-1">ADD NEW</button></a>
                        </div> -->

                    </div>

                    <!--<div class="mb-2">-->
                    <!--    <a class="btn pt-0 pl-0 d-inline-block d-md-none" data-toggle="collapse" href="#displayOptions"-->
                    <!--        role="button" aria-expanded="true" aria-controls="displayOptions">-->
                    <!--        Display Options-->
                    <!--        <i class="simple-icon-arrow-down align-middle"></i>-->
                    <!--    </a>-->
                    <!--    <div class="collapse d-md-block" id="displayOptions">-->
                    <!--        <div class="d-block d-md-inline-block">-->
                    <!--            <div class="btn-group float-md-left mr-1 mb-1">-->
                    <!--                <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button"-->
                    <!--                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">-->
                    <!--                    Order By-->
                    <!--                </button>-->
                    <!--                <div class="dropdown-menu">-->
                    <!--                    <a class="dropdown-item" href="#">Action</a>-->
                    <!--                    <a class="dropdown-item" href="#">Another action</a>-->
                    <!--                </div>-->
                    <!--            </div>-->
                    <!--            <div class="search-sm d-inline-block float-md-left mr-1 mb-1 align-top">-->
                    <!--                <input placeholder="Search...">-->
                    <!--            </div>-->
                    <!--        </div>-->

                    <!--    </div>-->
                    <!--</div>-->
                    <div class="separator mb-5"></div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 list" data-check-all="checkAll">
                    
                     <div class="card d-flex flex-row mb-3 element-to-hide">
                        <div class="pl-2 d-flex flex-grow-1 min-width-zero">
                            <div
                                class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">
                                <p class="mb-0 text-muted text-small w-15 w-sm-100">Title</p>
                                <p class="mb-0 text-muted text-small w-15 w-sm-100">Description</p>
                                <p class="mb-0 text-muted text-small w-15 w-sm-100">Created at</p>
                                <p class="mb-0 text-muted text-small w-15 w-sm-100"></p>
                            </div>
                        </div>
                    </div>
                  

                <?php while($row=mysqli_fetch_assoc($res)){ ?>
                    <div class="card d-flex flex-row mb-3">
                        <div class="pl-2 d-flex flex-grow-1 min-width-zero">
                            <div
                                class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">
                                <p class="mb-0 text-muted text-small w-15 w-sm-100"><?php echo $row['heading']?></p>
                                <p class="mb-0 text-muted text-small w-15 w-sm-100"><?php echo $row['content']?></p>
                                <p class="mb-0 text-muted text-small w-15 w-sm-100"><?php echo $row['created_at']?></p>
                                <div class="w-15 w-sm-100">
                                    <!--<span class="badge badge-pill badge-primary">Status</span>-->
                                    
                                    <?php
								
								echo "<span class='badge badge-pill badge-info'><a href='$manage_page?id=".$row['id']."' class='badge-text-color'>Edit</a></span>&nbsp;";
								
								
								?>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                <?php } ?>




                   

                </div>
            </div>
        </div>
    </main>



<?php
   include 'layout/footer.php';
?>