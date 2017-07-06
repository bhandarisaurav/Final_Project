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
    <title>Add Data</title>

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

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/themes/mint-choc/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

    <script type="text/javascript">
        <!--
        var letters = ' ABCÇDEFGHIJKLMNÑOPQRSTUVWXYZabcçdefghijklmnñopqrstuvwxyzàáÀÁéèÈÉíìÍÌïÏóòÓÒúùÚÙüÜ'
        var numbers = '1234567890'
        var signs = ',.:;@-\''
        var mathsigns = '+-=()*/'
        var custom = '<>#$%&?¿'

        function alpha(e, allow) {
            var k;
            k = document.all ? parseInt(e.keyCode) : parseInt(e.which);
            return (allow.indexOf(String.fromCharCode(k)) != -1);
        }


        $.noConflict();
        jQuery(document).ready(function ($) {
            $("#datepicker").datepicker({
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                maxDate: new Date()

            });
        });

        // -->
    </script>



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
<section class="content-wrap full youplay-login">

    <!-- Banner -->
    <div class="youplay-banner banner-top">
        <div class="image" style="background-image: url('../assets/images/banner-bg.jpg')"></div>

        <div class="info">
            <div>
                <div class="container align-center">
                    <div class="youplay-form">
                        <h1 style="text-transform: capitalize;" >Update Data</h1>

                        <div class="btn-group social-list dib">
                            <a class="btn btn-default" title="Share on Facebook" href="#!"><i class="fa fa-facebook"></i></a>
                            <a class="btn btn-default" href="#!" title="Share on Twitter"><i class="fa fa-twitter"></i></a>
                            <a class="btn btn-default" href="#!" title="Share on Google Plus"><i class="fa fa-google-plus"></i></a>
                        </div>

                        <form method="post" action="editQuestion">

                            <input type="hidden" name="page" value="update">

                            <input type="hidden" name="id" value="${question.id}">

                            <div class="youplay-input">
                                <input type="text" name="question" placeholder="Enter Question" autofocus required="required" value="${question.question}" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="option1" placeholder="Enter First Option" required="required" value="${question.option1}" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="option2" placeholder="Enter Second Option" required="required" value="${question.option2}" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="option3" placeholder="Enter Third Option" required="required" value="${question.option3}" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="option4" placeholder="Enter Fourth Option" required="required" value="${question.option4}" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="correct_ans" placeholder="Enter Correct Answer" required="required" value="${question.correct_ans}" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="category" placeholder="Enter Category" required="required" value="${question.category}" />
                            </div>


                            <button class="btn btn-default db" type="submit">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Banner -->

</section>
<!-- /Main Content -->



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
