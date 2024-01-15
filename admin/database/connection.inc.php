<?php
session_start();

//goddady server setup
// $con=mysqli_connect("localhost","creative_slumdog","Abbas@1995","creative_slumdog");
// define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/');
// define('SITE_PATH','https://creativeslumdog.com/');

//Hostinger server setup
// $con=mysqli_connect("localhost","Fintellect","Abbas@1995","wcoaching");
// define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/wc/');
// define('SITE_PATH','https://thefintellect.co.in/wc/');

//local setup
$con=mysqli_connect("localhost","root","","rotamach");
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/rotamach/');
define('SITE_PATH','http://localhost/rotamach/');

define('CMS_IMAGE_SERVER_PATH',SERVER_PATH.'media/cms/');
define('CMS_IMAGE_SITE_PATH',SITE_PATH.'media/cms/');

define('CLIENT_IMAGE_SERVER_PATH',SERVER_PATH.'media/client/');
define('CLIENT_IMAGE_SITE_PATH',SITE_PATH.'media/client/');

define('DESIGN_IMAGE_SERVER_PATH',SERVER_PATH.'media/design/');
define('DESIGN_IMAGE_SITE_PATH',SITE_PATH.'media/design/');

define('DRAWING_IMAGE_SERVER_PATH',SERVER_PATH.'media/drawing/');
define('DRAWING_IMAGE_SITE_PATH',SITE_PATH.'media/drawing/');

define('COUNT_IMAGE_SERVER_PATH',SERVER_PATH.'media/count/');
define('COUNT_IMAGE_SITE_PATH',SITE_PATH.'media/count/');

define('TEAM_IMAGE_SERVER_PATH',SERVER_PATH.'media/ourteam/');
define('TEAM_IMAGE_SITE_PATH',SITE_PATH.'media/ourteam/');

define('PROJECT_IMAGE_SERVER_PATH',SERVER_PATH.'media/project/');
define('PROJECT_IMAGE_SITE_PATH',SITE_PATH.'media/project/');

define('VIDEO_IMAGE_SERVER_PATH',SERVER_PATH.'media/video/');
define('VIDEO_IMAGE_SITE_PATH',SITE_PATH.'media/video/');

define('APPLICATION_IMAGE_SERVER_PATH',SERVER_PATH.'media/application/');
define('APPLICATION_IMAGE_SITE_PATH',SITE_PATH.'media/application/');

define('BANNER_IMAGE_SERVER_PATH',SERVER_PATH.'media/banner/');
define('BANNER_IMAGE_SITE_PATH',SITE_PATH.'media/banner/');



define('CONTENT_IMAGE_SERVER_PATH',SERVER_PATH.'media/contents/');
define('CONTENT_IMAGE_SITE_PATH',SITE_PATH.'media/contents/');

//countries we offer hogaya abhi without name change
define('WHY_IMAGE_SERVER_PATH',SERVER_PATH.'media/whyChooseUs/');
define('WHY_IMAGE_SITE_PATH',SITE_PATH.'media/whyChooseUs/');




define('PROFILE_IMAGE_SERVER_PATH',SERVER_PATH.'media/profile/');
define('PROFILE_IMAGE_SITE_PATH',SITE_PATH.'media/profile/');




define('CHILD_SERVICE_IMAGE_SERVER_PATH',SERVER_PATH.'media/child_service/');
define('CHILD_SERVICE_IMAGE_SITE_PATH',SITE_PATH.'media/child_service/');

define('TESTIMONIALS_IMAGE_SERVER_PATH',SERVER_PATH.'media/testimonials/');
define('TESTIMONIALS_IMAGE_SITE_PATH',SITE_PATH.'media/testimonials/');

define('EVENT_IMAGE_SERVER_PATH',SERVER_PATH.'media/event/');
define('EVENT_IMAGE_SITE_PATH',SITE_PATH.'media/event/');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/products/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/products/');

?>