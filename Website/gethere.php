<?php
  include_once("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
  
  <?php 
    $title = "How to get here";
    include ('head.php');
  ?>
  
  <body>
    <div class="container">

      <?php 
        $selected_top_page = 'get_here';
        include ('header.php'); 
        $body = get_page('get_here');
      ?>
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