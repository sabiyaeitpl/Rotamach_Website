<?php
 $con = mysqli_connect("localhost","root","","rotamach");
 if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/rotamach/');
define('SITE_PATH','http://localhost/rotamach/');

define('CAREER_IMAGE_SERVER_PATH',SERVER_PATH.'media/career/');
define('CAREER_IMAGE_SITE_PATH',SITE_PATH.'media/carrer/');

define('PROJECT_IMAGE_SERVER_PATH',SERVER_PATH.'media/project/');
define('PROJECT_IMAGE_SITE_PATH',SITE_PATH.'media/project/');

define('COUNT_IMAGE_SERVER_PATH',SERVER_PATH.'media/count/');
define('COUNT_IMAGE_SITE_PATH',SITE_PATH.'media/count/');

define('TEAM_IMAGE_SERVER_PATH',SERVER_PATH.'media/ourteam/');
define('TEAM_IMAGE_SITE_PATH',SITE_PATH.'media/ourteam/');

define('VIDEO_IMAGE_SERVER_PATH',SERVER_PATH.'media/video/');
define('VIDEO_IMAGE_SITE_PATH',SITE_PATH.'media/video/');

define('CMS_IMAGE_SERVER_PATH',SERVER_PATH.'media/cms/');
define('CMS_IMAGE_SITE_PATH',SITE_PATH.'media/cms/');

define('BLOG_IMAGE_SERVER_PATH',SERVER_PATH.'media/blog/');
define('BLOG_IMAGE_SITE_PATH',SITE_PATH.'media/blog/');

define('APPLICATION_IMAGE_SERVER_PATH',SERVER_PATH.'media/application/');
define('APPLICATION_IMAGE_SITE_PATH',SITE_PATH.'media/application/');

define('BANNER_IMAGE_SERVER_PATH',SERVER_PATH.'media/banner/');
define('BANNER_IMAGE_SITE_PATH',SITE_PATH.'media/banner/');

define('CONTENT_IMAGE_SERVER_PATH',SERVER_PATH.'media/contents/');
define('CONTENT_IMAGE_SITE_PATH',SITE_PATH.'media/contents/');

//countries we offer hogaya abhi without name change
define('WHY_IMAGE_SERVER_PATH',SERVER_PATH.'media/whyChooseUs/');
define('WHY_IMAGE_SITE_PATH',SITE_PATH.'media/whyChooseUs/');

define('TESTIMONIALS_IMAGE_SERVER_PATH',SERVER_PATH.'media/testimonials/');
define('TESTIMONIALS_IMAGE_SITE_PATH',SITE_PATH.'media/testimonials/');

?>