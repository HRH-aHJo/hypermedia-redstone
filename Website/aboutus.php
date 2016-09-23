<?php
  include_once("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
  
  <?php 
    $title = "About us";
    include ('head.php');
  ?>
  
  <body>
    <div class="container">

      <?php 
        $selected_top_page = 'about_us';
        include ('header.php'); 
        if(isset($_GET['page']))
          $page = $_GET['page'];
        else
          $page = '0';
        switch ($page) {
          case 'history':
            $body = get_page('aboutus_history');
            break;
          case 'rules':
            $body = get_page('aboutus_rules');
            break;
          default:
            $body = get_page('aboutus');
            break;
        }
      ?>
      <div class="row">
        <div class="col-md-4 menuitem <?php echo ($page === '0')?'selected':'';?>">
          <a href="aboutus.php">The Park at a glance</a>
        </div>
        <div class="col-md-4 menuitem <?php echo ($page === 'history')?'selected':'';?>">
          <a href="aboutus.php?page=history">History</a>
        </div>
        <div class="col-md-4 menuitem <?php echo ($page === 'rules')?'selected':'';?>">
          <a href="aboutus.php?page=rules">Rules</a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-10 col-md-offset-1">
          <div class="aboutustitle">
          <?php echo $body['title']; ?>
          </div>
          <div class="aboutusbody">
          <?php echo $body['body']; ?>
          </div>
        </div>
      </div>
      
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>