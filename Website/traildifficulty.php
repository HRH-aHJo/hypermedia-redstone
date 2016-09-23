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

        $id = $_GET['id'];
        if(!is_numeric($id)) exit();
      ?>
      <div class="row">
        <?php
        $trail_difficulties = get_trail_difficulties();
        foreach ($trail_difficulties as $difficulty) {
          if($difficulty['id'] == $id) {
            $thisdifficulty = $difficulty;
          }
        ?>
        <div class="col-md-2 menuitem  <?php echo ($difficulty['id']==$id)?'selected':'';?>">
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
        <?php echo $thisdifficulty['level'] . " Trails"; ?>
        </span>
      </div>
      <div class="row">
        <div class="col-md-5 col-md-offset-1">
          <div>
          <ul class="traillist">
          <?php
            $trails = get_trails_by_difficulty($id);
            foreach ($trails as $trail) {
              if($trail['image']!='') {
                echo "<li><a href=\"trail.php?id=".$trail['id']."\">".$trail['title']." (Code ".$trail['code'].")</a></li>";
              } else {
                echo "<li>".$trail['title']." (Code ".$trail['code'].")</li>";
              }
            }
          ?>
          </ul>
          </div>
        </div>
        <div class="col-md-6">
          <div>
            <img src="images/<?php echo $thisdifficulty['image'];?>" height="290" width="430" />
          </div>
        </div>
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