
<html>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Register</title>

  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <!-- Icon -->
  <link rel="icon" type="image/png" href="assets/images/icon.png">
  <!-- Google Fonts -->

  <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>

  <!-- Bootstrap -->
  <link rel="stylesheet" type="text/css" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css" />

  <!-- FontAwesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Youplay -->

  <link rel="stylesheet" type="text/css" href="assets/youplay/css/youplay.min.css" />

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
    <img src="assets/images/logo.png" alt="">
    <div class="preloader"></div>
  </div>
  <!-- /Preloader -->

    <!-- Main Content -->
  <section class="content-wrap full youplay-login">

    <!-- Banner -->
    <div class="youplay-banner banner-top">
      <div class="image" style="background-image: url('assets/images/banner-bg.jpg')"></div>

      <div class="info">
        <div>
          <div class="container align-center">
            <div class="youplay-form">
              <h1>Sign Up</h1>

              <div class="btn-group social-list dib">
                <a class="btn btn-default" title="Share on Facebook" href="http://facebook.com/sauravbh1"><i class="fa fa-facebook"></i></a>
                <a class="btn btn-default" href="#!" title="Share on Twitter"><i class="fa fa-twitter"></i></a>
                <a class="btn btn-default" href="#!" title="Share on Google Plus"><i class="fa fa-google-plus"></i></a>
              </div>

              <form method="post" action="register">
                <input type="hidden" name="page" value="register" />

                <div class="youplay-input">
                <input type="text" name="username" placeholder="Username" autofocus required="required" />
                </div>

                <div class="youplay-input">
                <input type="password" name="password" placeholder="Password" required="required" />
                </div>

				<div class="youplay-input">
                  <input type="text" name="role" onkeypress="return alpha(event,letters)"  placeholder="Role" title="Enter Valid Role" required="required" />
                </div>

				<button class="btn btn-default db" type="submit" value="register">Register</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /Banner -->

  </section>
  <!-- /Main Content -->


  <!-- jQuery -->

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
