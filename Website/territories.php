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
      ?>
      <div class="row">
        <?php
        $territoty_categories = get_territory_categories();
        foreach ($territoty_categories as $category) {
        ?>
        <div class="col-md-3 menuitem">
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
      <div class="row" style="margin-top:20px;margin-bottom:20px">
        <div class="col-md-10 col-md-offset-1"> 
        <h3 style="margin-left:40px;">
        Where?
        </h3>
        <div>The Adamello Brenta Nature Park is in the Rhaetian Alps, the Italian central southern part of the Alps.  Located in the west of the Trentino between the Val Giudicarie, the Val di Non and the Val di Sole, it extends over two separate geomorphologic areas - the Brenta Dolomites Group and the granite Adamello-Presanello massif.  The two mountain ranges are separated by the Val Rendena run through by the Sarca river. </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-11 col-md-offset-1"> 
        <ul style="font-size:20px">
        <?php
        foreach ($territoty_categories as $category) {
          if($category['image']!='') {
            echo "<li><a href=\"territorycategory.php?id=".$category['id']."\">".$category['title']."</a></li>";
          } else {
            echo "<li>".$category['title']."</li>";
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