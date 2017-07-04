<!DOCTYPE html>
<html>


<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
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

<!-- Preloader -->
<div class="page-preloader preloader-wrapp">
    <img src="../assets/images/logo.png" alt="">
    <div class="preloader"></div>
</div>

<!-- /Preloader -->

<!-- Navbar -->
<nav class="navbar-youplay navbar navbar-default">

    <div class="container">

        <div class="navbar-header">
            <a class="navbar-brand" href="navbar?page=navbar">
                <img src="../assets/images/logo.png" alt="">
            </a>
        </div>

        <div id="navbar" class="collapse navbar-collapse ">
            <ul class="nav navbar-nav">

                <li><a href="#!" style="font-size: 25px;"></a></li>
                <li><a href="#!" style="font-size: 25px;"></a></li>
                <li><a href="#!" style="font-size: 25px;"></a></li>
                <li><a href="#!" style="font-size: 25px;"></a></li>
                <li><a href="#!" style="font-size: 25px;"></a></li>

                <li>
                    <a href="#!" style="font-size: 25px;">User <span class="label">games</span></a>
                </li>

                <li>
                    <a href="businessList?page=list" style="font-size: 25px;">Business<span class="label">news</span></a>
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

<div>
    <div class="wrapper">
        <a href="questionForm?page=questionForm">
            <button class="button btn btn-success" style="font-size: 25px;">Add New Question</button></a>
    </div>

    <table class="tcontainer">
        <tr style="font-size: 30px;color: #fffc15;">
            <th>Question</th>
            <th>Option 1</th>
            <th>Option 2</th>
            <th>Option 3</th>
            <th>Option 4</th>
            <th>Correct Answer</th>
            <th>Category</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${questionList}" var="question">
            <tr style="font-size: 19px;">
                <td>${question.question}</td>                   
                <td>${question.option1}</td>                   
                <td>${question.option2}</td>
                <td>${question.option3}</td>
                <td>${question.option4}</td>                   
                <td>${question.correct_ans}</td>                   
                <td>${question.category}</td>                   
                <td><a href="editQuestion?page=edit&id=${question.id}"><i class="fa fa-pencil-square-o fa-6" aria-hidden="true"></i></a></td>                   
                <td><a href="deleteQuestion?page=delete&id=${question.id}" onclick="return confirm('Are you Sure');"><i class="fa fa-trash-o fa-6" aria-hidden="true"></i></a></td>
            </tr>
        </c:forEach>
    </table>

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
