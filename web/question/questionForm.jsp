<%--
  Created by IntelliJ IDEA.
  User: saura
  Date: 6/29/2017
  Time: 12:48 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>



<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
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

    <div class="container">

        <div class="navbar-header">
            <a class="navbar-brand" href="navbar?page=navbar">
                <img src="../assets/images/logo.png" alt="">
            </a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">

                <li><a href="#!" style="font-size: 25px;"></a></li>
                <li><a href="#!" style="font-size: 25px;"></a></li>
                <li><a href="#!" style="font-size: 25px;"></a></li>
                <li><a href="#!" style="font-size: 25px;"></a></li>
                <li><a href="#!" style="font-size: 25px;"></a></li>

                <li>
                    <a href="#!" style="font-size: 25px;">User <span class="label">games</span></a>
                </li>

                <li class="dropdown dropdown-hover ">
                    <a href="businessList?page=list" style="font-size: 25px;">Business</span> <span class="label">news</span></a>
                </li>

                <li>
                    <a href="questionList?page=list" style="font-size: 25px;">Question <span class="label">quiz</span></a>
                </li>

            </ul>


            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a href="#!" style="font-size: 25px;">Saurav Bhandari  <span class="badge bg-default">529</span></span>
                        <span class="label" style="font-size: 16px;">Deerwalk Institute of Technology</span></a>
                </li>

                <li>
                    <a href="logout?page=logout" style="font-size: 20px;">Logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>
                </li>

            </ul>

        </div>
    </div>
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
                        <h1 style="text-transform: capitalize;" >Add New  Data</h1>

                        <div class="btn-group social-list dib">
                            <a class="btn btn-default" title="Share on Facebook" href="#!"><i class="fa fa-facebook"></i></a>
                            <a class="btn btn-default" href="#!" title="Share on Twitter"><i class="fa fa-twitter"></i></a>
                            <a class="btn btn-default" href="#!" title="Share on Google Plus"><i class="fa fa-google-plus"></i></a>
                        </div>

                        <form method="post" action="addQuestion">
                            <input type="hidden" name="page" value="addQuestion">

                            <div class="youplay-input">
                                <input type="text" name="question" placeholder="Enter Question" autofocus required="required" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="option1" placeholder="Enter First Option" required="required" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="option2" placeholder="Enter Second Option" required="required" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="option3" placeholder="Enter Third Option" required="required" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="option4" placeholder="Enter Fourth Option" required="required" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="correct_ans" placeholder="Enter Correct Answer" required="required" />
                            </div>

                            <div class="youplay-input">
                                <input type="text" name="category" placeholder="Enter Category" required="required" />
                            </div>


                            <button class="btn btn-default db" type="submit">Add Data</button>
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
