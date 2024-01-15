<?php 
  $table = 'admin_users';
  $id = 1;
  $meta_sql = mysqli_fetch_assoc(mysqli_query($con,"select * from $table where id='$id'"));
  $title = $meta_sql['meta_title'];
  $metakeyword = $meta_sql['meta_keywords'];
  $metadescription = $meta_sql['meta_description'];


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><?php echo $title; ?></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="<?php echo $metakeyword ?>" name="keywords">
    <meta content="<?php echo $metadescription ?>" name="description">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Favicon -->
    <link href="img/favicon.png" rel="icon">
    <link rel="canonical" href="https://www.yourwebsite.com/page">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Oswald:wght@400;500;600&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Flaticon Font -->
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="css/aos.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <style>

    </style>
    <script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": ""Rotamech"
        "url": "https://www.rotamech.com/",
        "logo": "https://www.rotamech.com/img/logo.png"
        }
    </script>
</head>