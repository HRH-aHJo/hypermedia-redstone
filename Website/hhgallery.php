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
        $hh_images = get_huts_hostels_images_by_id($id);
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
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
			  
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			  <?php 
			  $i = 0;
			  	foreach ($hh_images as $image) {
	  			?>

			    <div class="item <?php echo ($i==0)?'active':''; ?>">
			      <img src="images/<?php echo $image['image']; ?>" width=500 height=500 />
			    </div>
				<?php
				$i++;
				}
				?>
			  </div>

			  <!-- Left and right controls -->
			  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
        </div>
      </div>

      <div class="row" style="margin-top:20px;margin-bottom:20px;">
      	<a href="hhdetail.php?id=<?php echo $hh['id']; ?>">Back to <?php echo $hh['title'];?> Information</a>
      </div>
      
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>