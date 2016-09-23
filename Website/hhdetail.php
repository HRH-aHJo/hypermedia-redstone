<?php
  include_once("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
  
  <?php 
    $title = "Huts and Hostels";
    include ('head.php');
  ?>
  
  <body>
    <div class="container">

      <?php 
        $selected_top_page = 'hut_hostel';
        include ('header.php'); 
        $id = $_GET['id'];
        if(!is_numeric($id)) exit();
        $hh = get_huts_hostels_by_id($id);
      ?>
      <div class="row">
        <?php
        $huts_hostels = get_huts_hostels();
        foreach ($huts_hostels as $hut_hostel) {
        ?>
        <div class="col-md-4 menuitem <?php echo ($hut_hostel['id']==$id)?'selected':'';?>">
        <?php
          if($hut_hostel['location']!='') {
            echo "<a href=\"hhdetail.php?id=".$hut_hostel['id']."\">".$hut_hostel['title']."</a>";
          } else {
            echo $hut_hostel['title'];
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
          <span class="trailtitle"><?php echo $hh['title'];?></span><br/>
          <span><?php echo $hh['details'];?></span>
          <div>
          <a href="hhgallery.php?id=<?php echo $id;?>">Watch some photos</a>
          </div>
          <span class="hhwhere">Where it is</span><br/>
          <span><?php echo $hh['location'];?></span>
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-5" style="margin-top:20px; margin-left:20px;margin-bottom:20px;">
        <?php 
        $trails = get_all_trail_by_hh($id);
        if($trails) {
          ?>
          From this Hostel starts: 
          <?php
          $i=0;
          foreach ($trails as $trails_rel) {
            $trail = get_trail($trails_rel['trail_id']);
            if($i>0) echo ", ";
            if($trail['image']!='') {
              echo "<a href=\"trail.php?id=".$trail['id']."\">".$trail['title']."</a>";
            } else {
              echo $trail['title'];
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