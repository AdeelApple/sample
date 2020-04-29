
<?php $crls=mysqli_query($conn, "select* from slider where visible=1 order by rank"); $sz=mysqli_num_rows($crls);
if ($sz){ ?>
<div class="container">
  <div class="width-controller">
    <div class="row">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
       <!-- Indicators -->
       <ol class="carousel-indicators">
         <?php  for($i=0; $i<$sz;$i++){  ?>
         <li data-target="#myCarousel" data-slide-to="<?php echo $i; ?>" <?php if($i==0)echo "class='active'"; ?>></li>
         <?php } ?>
       </ol>
       
       <!-- Wrapper for slides -->
       <div class="carousel-inner" role="listbox">
         <?php $i=0; while($sl=mysqli_fetch_array($crls)){ ?>
         <div class="item <?php if($i==0) echo 'active' ?>"><img src="<?php echo $admin.$sl['address']; ?>"></div>
         <?php $i++; } ?>  
       </div>
       
       <!-- Left and right controls -->
       <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
         <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
       </a>
       <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
         <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
       </a>
     </div>
   </div>
 </div>
</div>
<?php } ?>