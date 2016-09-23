<?php
  include_once("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
  
  <?php 
    $title = "Territory";
    include ('head.php');
  ?>
  
  <body>
    <div class="container">

      <?php 
        $selected_top_page = 'territory';
        include ('header.php'); 

        $id = $_GET['id'];
        if(!is_numeric($id)) exit();
        $territory = get_territory($id);
      ?>
      <div class="row">
        <?php
        $territoty_categories = get_territory_categories();
        foreach ($territoty_categories as $category) {
        ?>
        <div class="col-md-3 menuitem <?php echo ($category['id']==$territory['category'])?'selected':'';?>">
        <?php
          if($category['image']!='') {
            echo "<a href=\"territorycategory.php?id=".$category['id']."\">".$category['title']."</a>";
          } else {
            echo $category['title'];
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
          <img src="images/<?php echo $territory['image'];?>" width="470" height="350" align="right" style="margin:0px 0px 20px 20px" /> 
          <span class="trailtitle"><?php echo $territory['title'];?></span><br/>
          <span><?php echo $territory['details'];?></span>
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-5" style="margin-top:20px; margin-left:20px;margin-bottom:20px;">
        <?php 
        $trails = get_all_trail_by_territory($id);
        if($trails) {
          ?>
          Here you can see: 
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