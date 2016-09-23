<?php
  include_once("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
  
  <?php 
    $title = "Territories";
    include ('head.php');
  ?>
  
  <body>
    <div class="container">

      <?php 
        $selected_top_page = 'territory';
        include ('header.php'); 

        $id = $_GET['id'];
        if(!is_numeric($id)) exit();
      ?>
      <div class="row">
        <?php
        $territoty_categories = get_territory_categories();
        foreach ($territoty_categories as $category) {
          if($category['id'] == $id) {
            $thiscategory = $category;
          }
        ?>
        <div class="col-md-3 menuitem <?php echo ($category['id']==$id)?'selected':'';?>">
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
          <img src="images/<?php echo $thiscategory['image'];?>" width="470" height="350" align="right" style="margin:0px 0px 20px 20px" /> 
          <span class="trailtitle"><?php echo $thiscategory['title'];?></span><br/>
          <span><?php echo $thiscategory['details'];?></span>
          </p>
        <ul style="font-size:20px">
        <?php
        $territories = get_territory_by_category($id);
        foreach ($territories as $territory) {
          if($territory['image']!='') {
            echo "<li><a href=\"territory.php?id=".$territory['id']."\">".$territory['title']."</a></li>";
          } else {
            echo "<li>".$territory['title']."</li>";
          }
        }
        ?>
        </ul>
        </div>
      </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>