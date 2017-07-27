<%@ page import="domain.Quiz" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2/22/2017
  Time: 9:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>


<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>List</title>

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

<div>
    <div class="wrapper">
        <a href="#">
            <button class="button btn btn-success" style="font-size: 25px;">${msg}</button></a>
    </div>

    <table class="tcontainer">
        <tr style="font-size: 28px;color: #fffc15;">
            <th>Question</th>
            <th>Correct Answer</th>
            <th>Chosen Answer</th>
            <th>Marks</th>
            <th>Status</th>
        </tr>

        <c:forEach items="${quizResult}" var="quizResult">
            <c:choose>
                <c:when test="${quizResult.correct_ans == quizResult.user_ans}">
                    <tr style="font-size: 19px;">
                        <td>${quizResult.question}</td>
                        <td>${quizResult.correct_ans}</td>
                        <td>${quizResult.user_ans}</td>
                        <td>${quizResult.marks}</td>
                        <td style="color:black;background-color: #71ff0d;color: #004bff;font-weight: bold;font-size: 25px;">Correct</td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr style="font-size: 19px;">
                        <td>${quizResult.question}</td>
                        <td>${quizResult.correct_ans}</td>
                        <td>${quizResult.user_ans}</td>
                        <td>${quizResult.marks}</td>
                        <td style="color:black;background-color: #ff0d0d;color: #40ffa1;font-weight: bold;font-size: 25px;">Incorrect</td>
                    </tr>
                </c:otherwise>
            </c:choose>

        </c:forEach>
    </table>
    <br>
    <div class="wrapper">
    <center>

        <a href="#">
            <button class="button btn btn-success" style="font-size: 25px;">Total Marks=${total_marks}</button></a>

    </center>
    </div>


</div>

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



