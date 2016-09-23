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
        $trail = get_trail($id);
      ?>
      <div class="row">
        <?php
        $trail_difficulties = get_trail_difficulties();
        foreach ($trail_difficulties as $difficulty) {
        ?>
        <div class="col-md-2 menuitem  <?php echo ($difficulty['id']==$trail['difficulty'])?'selected':'';?>">
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
      <div class="row">
        <div class="col-md-11" style="margin-top:20px; margin-left:20px">
          <p>
          <img src="images/<?php echo $trail['image'];?>" width="470" height="350" align="left" style="margin:0px 20px 20px 0px" /> 
          <span class="trailtitle"><?php echo $trail['title'];?></span><br/>
          <span class="trailcode">Code <?php echo $trail['code'];?></span><br/>
          <span><?php echo $trail['details'];?></span>
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-5" style="margin-top:20px; margin-left:20px;margin-bottom:20px;">
        <?php 
        $territories = get_all_territory_by_trail($id);
        if($territories) {
          ?>
          Here you can see: 
          <?php
          $i=0;
          foreach ($territories as $territory_rel) {
            $territory = get_territory($territory_rel['territory_id']);
            if($i>0) echo ", ";
            if($territory['image']!='') {
              echo "<a href=\"territory.php?id=".$territory['id']."\">".$territory['title']."</a>";
            } else {
              echo $territory['title'];
            } 
            $i++;
          }
        }
        ?>
        </div>
        <div class="col-md-5" style="margin-top:20px; margin-left:20px;margin-bottom:20px;">
        <?php 
        $hhs = get_all_hh_by_trail($id);
        if($hhs) {
          ?>
          Where can i sleep or eat?
          <?php
          $i=0;
          foreach ($hhs as $hhs_rel) {
            $hh = get_huts_hostels_by_id($hhs_rel['hut_hostel_id']);
            if($i>0) echo ", ";
            if($hh['location']!='') {
              echo "<a href=\"hhdetail.php?id=".$hh['id']."\">".$hh['title']."</a>";
            } else {
              echo $hh['title'];
            } 
            $i++;
          }
        }
        ?>
        </div>
      </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>