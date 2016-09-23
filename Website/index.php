<?php
  include_once("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
  
  <?php 
    $title = "Home";
    include ('head.php');
  ?>
  
  <body>
    <div class="container">

      <?php include ('header.php'); ?>

      <div class="row">
        <div class="col-md-4">
          <div class="col-md-12 mainitem news">
            <h4>
            NEWS
            </h4>
            <?php
              $news = get_news();
              foreach ($news as $one_news) {
            ?>
            <div>
              <span style="font-weight:bold">
                <?php echo $one_news['publishdate']; ?> :
              </span>
              <span>
                <?php echo $one_news['title']; ?>
              </span>
              <div>
                <?php if($one_news['image']) {
                  echo "<img src='images/" . $one_news['image'] . "'' width=200 height=200 />";
                }
                ?>
              </div>
            </div>
            <?php
              }
            ?>
          </div>
        </div>
        <div class="col-md-4 ">
          <div class="col-md-12 mainitem weather">
            <h4>WEATHER</h4>
            <div>Today:</div>
            <div><img src="images/weather today.png" /></div>
            <div>Next days:</div>
            <div><img src="images/weather next.png" /></div>
            <div><img src="images/weather next2.png" style="margin-top:5px;" /></div>
          </div>
        </div>
        <div class="col-md-4 ">
          <div class="col-md-12 mainitem">
            <h4>
              WELCOME TO THE REDSTONE PARK OFFICIAL SITE
            </h4>
            <div style="text-align:left">
              <div>Find out more about</div>
              <div>our trails: <a href="trails.php">here</a></div>
              <div>our territory: <a href="territories.php">here</a></div>
              <div>our huts and hotels: <a href="hh.php">here</a></div>
              <div>aboutus: <a href="aboutus.php">here</a></div>
              <div>how to get here: <a href="gethere.php">here</a></div>
              <div>Enjoy!</div>
            </div>
          </div>
          <div class="col-md-12 mainitem">
            <div>DOWNLOAD THE MAP OF THE PARK</div>
            <div>Here: <img src="images/pdf.png" width=32 height=32 />park_map_download.pdf</div>
          </div>
        </div>
      </div>
      <div class="row">
          <div class="col-md-12" >
            <div class="col-md-12 mainitem" style="text-align:left" >
              <h4>
              Contact us: <img src="images/facebook.png" width=32 height=32 />
              <img src="images/twitter.png" width=32 height=32 />
              <img src="images/instagram.png" width=32 height=32 />
              </h4>
              
              <div class="col-md-12" >
              Via Nazionale, 24 38080 Strembo (TN) 
              </div>
              <div class="col-md-12" >
                Mail: info@redstonepark.org
              </div>
              <div class="col-md-12 " >
                Phone: 203-781-3819
              </div>
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