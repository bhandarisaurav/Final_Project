<!DOCTYPE html>
<html>


<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>List</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="../assets/css/style.css">

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
    <link rel="stylesheet" type="text/css" href="../assets/css/style_table.css" />
    <!-- RTL (uncomment this to enable RTL support) -->
    <!-- <link rel="stylesheet" type="text/css" href="../assets/youplay/css/youplay-rtl.css" /> -->

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>

        .wrapper {
            text-align: right;
        }

        .button {
            margin-right: 100px;
        }

        .smallCell
        {
            width: 1px;
            white-space: nowrap;
        }

        h2{
            padding-bottom: 0.5em;
        }


    </style>


</head>



<body>

<!-- PreLoader -->
<div class="page-preloader preloader-wrapp">
    <img src="../assets/images/logo.png" alt="">
    <div class="preloader"></div>
</div>

<!-- /PreLoader -->

<!-- Navbar -->
<nav class="navbar-youplay navbar navbar-default">

    <%@include file="../include/menu.jsp"%>                             <!-- INCLUDE -->
</nav>
<!-- Navbar -->

<center>
    <form method="post" action="getQuestion">

        <input type="hidden" name="id" value="${question.id}">
        <input type="hidden" name="page" value="quiz">
        <input type="hidden" name="correct" value="${question.correct_ans}">
        <input type="hidden" name="question" value="${question.question}">

        <div id="quiz">
            <div id="question">
                <h2>${question.question}</h2>

                <input id="choices-1" type="radio" name="option" value="${question.option1}" onClick="document.getElementById('subutton').disabled = false" >
                <label for="choices-1">${question.option1}</label><input id="choices-2" type="radio" name="option" value="${question.option2}" onClick="document.getElementById('subutton').disabled = false" ><label for="choices-2">${question.option2}</label>
                <input id="choices-3" type="radio" name="option" value="${question.option3}" onClick="document.getElementById('subutton').disabled = false" >
                <label for="choices-3">${question.option3}</label><input id="choices-4" type="radio" name="option" value="${question.option4}" onClick="document.getElementById('subutton').disabled = false" ><label for="choices-4">${question.option4}</label>

            </div>

            <input id = "subutton" class="butn" type="submit" value="Next">

        </div>
    </form>
</center>

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
