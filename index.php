<?php
session_start();
?>

<html>

  <head>
    <title> Home | Charmant Pâtisserie' </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <link rel="stylesheet" type = "text/css" href ="css/index.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>


  <body>

    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Charmant Pâtisserie'</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="active" ><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>

          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="mybakery.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Pâtisserie Zone </a></li>
            <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
              (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
             </a></li>
            <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Sign-up</a></li>
              <li> <a href="managersignup.php"> Manager Sign-up</a></li>
              
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Manager Login</a></li>
            </ul>
            </li>
          </ul>

<?php
}
?>

    </nav>

    <div class="wide">
      	<div class="col-xs-5 line"><hr></div>
        <div class="col-xs-2 logo"><img src="images/logo.png"></div>
        <div class="col-xs-5 line"><hr></div>
        <div class="tagline">Charm your Palate, Taste the Tradition</div>
    </div>
    <br>
    <div class="photo-grid">
    <div class="photo">
      <h1>Baguette</h1>
      <a href="cart.php">
        <img src="images/baguette.jpg" alt="Baguette">
      </a>
    </div>
    <div class="photo">
      <h1>Pain De Campagne</h1>
      <a href="cart.php">
        <img src="images/pain_de_campagne.jpg" alt="Pain_de_campagne">
      </a>
    </div>
    <div class="photo">
      <h1>Fougasse</h1>
      <a href="cart.php">
        <img src="images/faugasse.jpg" alt="Fougasse">
      </a>
    </div>
    <div class="photo">
      <h1>Pain Au Levain</h1>
      <a href="cart.php">
        <img src="images/pain_au_levain.jpg" alt="Pain_au_levain">
      </a>
    </div>
    <div class="photo">
      <h1>Brioche</h1>
      <a href="cart.php">
        <img src="images/brioche.png" alt="Brioche">
        </a>
    </div>
    <div class="photo">
      <h1>Croissant</h1>
      <a href="cart.php">
        <img src="images/quaso.jpg" alt="Croissant">
      </a>
    </div>
    <div class="photo">
      <h1>Pain Au Chocolat</h1>
      <a href="cart.php">
        <img src="images/pain_au_chocholat.jpg" alt="Pain_au_chocolat">
      </a>
    </div>
    <div class="photo">
      <h1>Macarons</h1>
      <a href="cart.php">
        <img src="images/macarons.jpg" alt="Macaron">
      </a>
    </div>
    <div class="photo">
      <h1>Eclair</h1>
      <a href="cart.php">
        <img src="images/Eclair.avif" alt="Eclair">
      </a>
    </div>
    <div class="photo">
      <h1>Tarte Tatin</h1>
      <a href="cart.php">
        <img src="images/tarte_tatin.png" alt="Tarte_tatin">
      </a>
    </div>
    <div class="photo">
      <h1>Opera Cake</h1>
      <a href="cart.php">
        <img src="images/opera_cake.jpg" alt="Opera Cake">
      </a>
    </div>
    <div class="photo">
      <h1>Madeleine</h1>
      <a href="cart.php">
        <img src="images/madelaine.jpg" alt="Madeleine">
      </a>
    </div>
    <div class="photo">
      <h1>Charlotte Russe</h1>
      <a href="cart.php">
        <img src="images/charlotte_russe.jpg" alt="Charlotte Russe">
      </a>
    </div>
    <div class="photo">
      <h1>Bûche de Noël</h1>
      <a href="cart.php">
        <img src="images/buche_de_noel2.jpg" alt="Bûche de Noël">
      </a>
      
    </div>
    <div class="photo">
      <h1>Dacquoise</h1>
      <a href="cart.php">
        <img src="images/dacquoise.jpg" alt="Dacquoise">
      </a>
    </div>
    
  </div>

    <div class="orderblock">
    <h2>Feeling Hungry?</h2>
    <center><a class="btn btn-success btn-lg" href="customerlogin.php" role="button" > Order Now </a></center>
    </div>

    
  
</body>
</html>