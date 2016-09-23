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
      ?>
      <div class="row">
        <?php
        $huts_hostels = get_huts_hostels();
        foreach ($huts_hostels as $hut_hostel) {
        ?>
        <div class="col-md-4 menuitem">
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
          <img src="images/freemans-campground-03.jpg" width="470" height="350" align="right" style="margin:0px 0px 20px 20px" /> 
          <span><p class="bodytext"><big>The Park has two hostels, one situated at Sant'Antonio di Mavignola and one in the heart of the Brenta at Valagola near the lkae with the same name. The Park recommends you to use accommodation with the Qualit&agrave; Parco logo.  Structures with the Qualit&agrave; Parco logo adopt a number of management rules aimed at saving energy and water, rationalising use of resources and making what they offer more typical.&nbsp;  Participants in this project are aware of the importance of their role and committed to maintaining the landscape intact and constantly attenuating their environmental impact.  Hotels, garn&igrave; and campsites await you to help you discover the fascination of unspoilt nature and a unique landscape where you can enjoy your holiday in respect of the local area, making the most of your experience by discovering the environment, history and traditions of one of the most evocative holiday<br />destinations in the Alps.<br />Instead, for the most adventurous of you, &nbsp;the park has a big campground, which can guest around 100 tents; we are gonna supply electricity for all your needs, and all<br /> the information you want to know, contact us to save a spot for you!<br /></big></p></span>
          </p>
        <ul style="font-size:20px">
        <?php
        foreach ($huts_hostels as $hut_hostel) {
          if($hut_hostel['location']!='') {
            echo "<li><a href=\"hhdetail.php?id=".$hut_hostel['id']."\">".$hut_hostel['title']."</a></li>";
          } else {
            echo "<li>".$hut_hostel['title']."</li>";
          }
        }
        ?>
        </div>
      </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>