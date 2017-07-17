<!DOCTYPE html>
<!--
Name: Youplay - Game Template based on Bootstrap
Version: 3.0.0
Author: nK
Website: http://nkdev.info
Support: http://nk.ticksy.com
Purchase: http://themeforest.net/item/youplay-game-template-based-on-bootstrap/11306207?ref=_nK
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
Copyright 2016.
-->
<html>


<!-- Mirrored from html.nkdev.info/youplay/dark/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 May 2016 12:39:47 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>youplay</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Icon -->
    <link rel="icon" type="image/png" href="../assets/images/icon.png">
    <!-- Google Fonts -->

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="../assets/bower_components/bootstrap/dist/css/bootstrap.min.css" />

    <!-- FontAwesome -->
    <link rel="stylesheet" type="text/css" href="../assets/bower_components/font-awesome/css/font-awesome.min.css" />

    <!-- Owl Carousel -->
    <link rel="stylesheet" type="text/css" href="../assets/bower_components/owl.carousel/dist/assets/owl.carousel.min.css" />
    <!-- Youplay -->

    <link rel="stylesheet" type="text/css" href="../assets/youplay/css/youplay.min.css" />

    <!-- Custom Styles -->
    <link rel="stylesheet" type="text/css" href="../assets/css/custom.css" />
    <!-- RTL (uncomment this to enable RTL support) -->
    <!-- <link rel="stylesheet" type="text/css" href="../assets/youplay/css/youplay-rtl.css" /> -->

</head>



<body>

<!-- Preloader -->
<div class="page-preloader preloader-wrapp">
    <img src="../assets/images/logo.png" alt="">
    <div class="preloader"></div>
</div>

<!-- /Preloader -->

<!-- Navbar -->
<nav class="navbar-youplay navbar navbar-default navbar-fixed-top">

    <%@include file="../include/menu.jsp"%>                             <!-- INCLUDE -->

</nav>
<!-- /Navbar -->


<!-- Main Content -->
<section class="content-wrap">

    <!-- Banner -->
    <section class="youplay-banner banner-top youplay-banner-parallax">
        <div class="image" style="background-image: url('../assets/images/banner-bg.jpg')">
        </div>

        <div class="info">
            <div>
                <div class="container" style="text-align:center;">
                    <h1>Menu</h1>
                    <a class="btn btn-lg" href="#!" style="font-size: 2.2em;">Purchase</a><br><br>
                    <a class="btn btn-lg" href="#!" style="font-size: 2.2em;">Purchase</a><br>
                </div>
            </div>
        </div>
    </section>
    <!-- /Banner -->



    <!-- Footer -->
    <footer class="youplay-footer-parallax">
        <div class="wrapper" style="background-image: url('../assets/images/footer-bg.jpg');">

            <!-- Social Buttons -->
            <div class="social">
                <div class="container">
                    <h3 style="font-size: 2em;">Connect Socially</h3>

                    <div class="social-icons">
                        <div class="social-icon">
                            <a href="https://www.facebook.com/sauravbh1">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                                <span>Facebook</span>
                            </a>
                        </div>
                        <div class="social-icon">
                            <a href="https://www.youtube.com/channel/UCmCfg6O8xUYz3VRHlpo6sBg">
                                <i class="fa fa-twitter-square"></i>
                                <span>Twitter</span>
                            </a>
                        </div>
                        <div class="social-icon">
                            <a href="https://www.instagram.com/_sauravbhandari_/">
                                <i class="fa fa-instagram"></i>
                                <span>instagram</span>
                            </a>
                        </div>
                        <div class="social-icon">
                            <a href="https://www.youtube.com/channel/UCmCfg6O8xUYz3VRHlpo6sBg">
                                <i class="fa fa-youtube-square"></i>
                                <span>Youtube</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Social Buttons -->

            <!-- Copyright -->
            <div class="copyright">
                <div class="container">
                    <strong><h3>Saurav Bhandari &copy; 2017. All rights reserved</h3></strong>
                </div>
            </div>
            <!-- /Copyright -->

        </div>
    </footer>
    <!-- /Footer -->

</section>
<!-- /Main Content -->

<!-- Search Block -->
<div class="search-block">
    <a href="#!" class="search-toggle glyphicon glyphicon-remove"></a>
    <form action="http://html.nkdev.info/youplay/dark/search.html">
        <div class="youplay-input">
            <input type="text" name="search" placeholder="Search...">
        </div>
    </form>
</div>
<!-- /Search Block -->

<!-- jQuery -->
<script type="text/javascript" src="../assets/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Hexagon Progress -->
<script type="text/javascript" src="../assets/bower_components/HexagonProgress/jquery.hexagonprogress.min.js"></script>


<!-- Bootstrap -->
<script type="text/javascript" src="../assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Jarallax -->
<script type="text/javascript" src="../assets/bower_components/jarallax/dist/jarallax.min.js"></script>

<!-- Smooth Scroll -->
<script type="text/javascript" src="../assets/bower_components/smoothscroll-for-websites/SmoothScroll.js"></script>

<!-- Owl Carousel -->
<script type="text/javascript" src="../assets/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Countdown -->
<script type="text/javascript" src="../assets/bower_components/jquery.countdown/dist/jquery.countdown.min.js"></script>
<!-- Youplay -->
<script type="text/javascript" src="../assets/youplay/js/youplay.min.js"></script>

<!-- init youplay -->
<script>
    if(typeof youplay !== 'undefined') {
        youplay.init({
            // enable parallax
            parallax:         true,

            // set small navbar on load
            navbarSmall:      false,

            // enable fade effect between pages
            fadeBetweenPages: true,

            // twitter and instagram php paths
            php: {
                twitter: './php/twitter/tweet.php',
                instagram: './php/instagram/instagram.php'
            }
        });
    }
</script>


<script type="text/javascript">
    $(".countdown").each(function() {
        $(this).countdown($(this).attr('data-end'), function(event) {
            $(this).text(
                event.strftime('%D days %H:%M:%S')
            );
        });
    })
</script>

</body>
</html>
