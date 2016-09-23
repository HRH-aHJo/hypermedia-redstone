<?php
  include_once("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
  
  <?php 
    $title = "Trails";
    include ('head.php');
  ?>
  
  <body>
    <div class="container">

      <?php 
        $selected_top_page = 'trail';
        include ('header.php'); 
      ?>
      <div class="row">
        <?php
        $trail_difficulties = get_trail_difficulties();
        foreach ($trail_difficulties as $difficulty) {
        ?>
        <div class="col-md-2 menuitem">
        <?php
          if($difficulty['image']!='') {
            echo "<a href=\"traildifficulty.php?id=".$difficulty['id']."\">".$difficulty['level']."</a>";
          } else {
            echo $difficulty['level'];
          }
          ?>
        </div>
        <?php
          }
        ?>
      </div>
      <div class="row" style="margin-top:20px;margin-bottom:20px">
        <span style="margin-left:40px;">
        SELECT DIFFICULTY OF THE TRAIL
        </span>
      </div>
      <div class="row">
        <?php
        foreach ($trail_difficulties as $difficulty) {
        ?>
        <div class="col-md-5 col-md-offset-1">
          <div>
            <?php 
            if($difficulty['image']!='') {
              echo "<a href=\"traildifficulty.php?id=".$difficulty['id']."\">".$difficulty['level']."</a>";
            } else {
              echo $difficulty['level'];
            }
          ?>
          </div>
          <div>
          <?php echo $difficulty['details']; ?>
          </div>
        </div>
        <?php
          }
        ?>
      </div>
      <div class="row">
        <img src="images/hiking-feet-fall-1240.jpg" height="190" width="1024" />
      </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>