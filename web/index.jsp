<%--
  Created by IntelliJ IDEA.
  User: saura
  Date: 2/28/2017
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<head>
  <title>Business Login</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Icon -->
  <link rel="icon" type="image/png" href="assets/favicon.ico">
  <!-- Google Fonts -->

  <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>

  <!-- Bootstrap -->
  <link rel="stylesheet" type="text/css" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css" />

  <!-- FontAwesome -->
  <link rel="stylesheet" type="text/css" href="assets/bower_components/font-awesome/css/font-awesome.min.css" />
  <!-- Youplay -->

  <link rel="stylesheet" type="text/css" href="assets/youplay/css/youplay.min.css" />

</head>


<body>


  <div class="page-preloader preloader-wrapp">
    <img src="assets/images/logo.png" alt="">
    <div class="preloader"></div>
  </div>


  <!-- Main Content -->
  <section class="content-wrap full youplay-login">

    <!-- Banner -->
    <div class="youplay-banner banner-top">
      <div class="image" style="background-image: url('assets/images/banner-bg.jpg')"></div>

      <div class="info">
        <div>
          <div class="container align-center">
            <div class="youplay-form">
              <h1>${msg}</h1>
              <h1>Login</h1>

              <div class="btn-group social-list dib">
                <a class="btn btn-default" title="Share on Facebook" href="#!"><i class="fa fa-facebook"></i></a>
                <a class="btn btn-default" href="#!" title="Share on Twitter"><i class="fa fa-twitter"></i></a>
                <a class="btn btn-default" href="#!" title="Share on Google Plus"><i class="fa fa-google-plus"></i></a>
              </div>

              <form method="post" action="login">

                <input type="hidden" name="page" value="login" />

                <div class="youplay-input">
                  <input type="text" name="username" placeholder="Username">
                </div>
                <div class="youplay-input">
                  <input type="password" name="password" placeholder="Password">
                </div>
                <button class="btn btn-default db" type="submit" value="login" >SIGN IN</button>
              </form>
			  <p><a href="register.jsp"><button class="btn btn-default db">SIGN UP</button></a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /Banner -->

  </section>
  <!-- /Main Content -->


  <!-- jQuery -->
  <script type="text/javascript" src="assets/bower_components/jquery/dist/jquery.min.js"></script>

  <!-- Hexagon Progress -->
  <script type="text/javascript" src="assets/bower_components/HexagonProgress/jquery.hexagonprogress.min.js"></script>


  <!-- Bootstrap -->
  <script type="text/javascript" src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

  <!-- Smooth Scroll -->
  <script type="text/javascript" src="assets/bower_components/smoothscroll-for-websites/SmoothScroll.js"></script>
  <!-- Youplay -->
  <script type="text/javascript" src="assets/youplay/js/youplay.min.js"></script>

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


</body>

</html>
