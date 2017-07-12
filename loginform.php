<?php

 ob_start();
 session_start();
 require_once 'dbconnection.php';

 // if session is not set this will redirect to login page
 if( !isset($_SESSION['user_id']) ) {
  header("Location: userlogin.php");
  exit;
 } // select loggedin users detail
 $conn = mysqli_connect("localhost","vchilkur","vchilkur","vchilkur_db");
 $res=mysqli_query($conn,"SELECT * FROM registered_users WHERE user_id=".$_SESSION['user_id']);
 $userRow=mysqli_fetch_array($res);
 $_SESSION['emailid']=$userRow['email'];

?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $_SESSION['emailid']; ?></title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"  />
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>

 <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="loginhome.php">Home</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="loginrankings.php">Rankings</a></li>
            <li><a href="loginsearch.php">Search a University</a></li>
            <li><a href="loginform.php">Add/Update Information</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
     <span class="glyphicon glyphicon-user"></span>&nbsp;Hi' <?php echo $userRow['email']; ?>&nbsp;<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="logout.php?logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <br>
    <br>
    <br>
    <br>
    <form class="form-horizontal" action="new_entry.php" method="post" enctype="multipart/form-data">
  <fieldset>


  <!-- Form Name -->
  <legend>Add University Here</legend>



  <!-- Text input-->
  <div class="form-group">
  <label class="col-md-4 control-label" for="ranking">Ranking</label>
  <div class="col-md-4">
  <input id="ranking" name="ranking" type="text" placeholder="Ranking" class="form-control input-md">

  </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
  <label class="col-md-4 control-label" for="univ_name">University Name</label>
  <div class="col-md-4">
  <input id="univ_name" name="univ_name" type="text" placeholder="University Name" class="form-control input-md">

  </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
  <label class="col-md-4 control-label" for="country">Country</label>
  <div class="col-md-4">
  <input id="country" name="country" type="text" placeholder="Country" class="form-control input-md">

  </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
  <label class="col-md-4 control-label" for="score">Score</label>
  <div class="col-md-4">
  <input id="score" name="score" type="text" placeholder="Score" class="form-control input-md">

  </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
  <label class="col-md-4 control-label" for="publications">Publications</label>
  <div class="col-md-4">
  <input id="publications" name="publications" type="text" placeholder="Publications" class="form-control input-md">

  </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
  <label class="col-md-4 control-label" for="national_rank">National Rank</label>
  <div class="col-md-4">
  <input id="national_rank" name="national_rank" type="text" placeholder="National Rank" class="form-control input-md">

  </div>
  </div>


  <!-- Text input-->
  <div class="form-group">
  <label class="col-md-4 control-label" for="enrollment">Enrollment</label>
  <div class="col-md-4">
  <input id="enrollment" name="enrollment" type="text" placeholder="Enrollment" class="form-control input-md">

  </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
  <label class="col-md-4 control-label" for="sex_ratio">Sex Ratio</label>
  <div class="col-md-4">
  <input id="sex_ratio" name="sex_ratio" type="text" placeholder="Sex Ratio" class="form-control input-md">

  </div>
  </div>

    <!-- Button -->
    <div class="form-group">
      <label class="col-md-8 control-label" for="submit"></label>
      <div class="col-md-4">
        <button id="submit" name="submit" class="btn btn-success">Submit</button>
      </div>
    </div>

    </fieldset>
  </form>


  <form class="form-horizontal" action="update_entry.php" method="post" enctype="multipart/form-data">
<fieldset>


<!-- Form Name -->
<legend>Update Unviersity Details Here</legend>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="univ_name">University Name</label>
  <div class="col-md-4">
    <select id="univ_name" name="univ_name" class="form-control">
      <option value="">Select Univerity</option>
      <?php
      $sql_list= "SELECT * FROM univ_academic";
      $results= mysqlI_query($conn,$sql_list);
      while ($row = mysqli_fetch_array($results)) {
      ?>
      <option value="<?php echo $row["ranking"]; ?>"><?php echo $row["institution"]; ?></option>
      <?php } ?>
    </select>
      </div>
    </div>


<!-- Text input-->
<div class="form-group">
<label class="col-md-4 control-label" for="newpublications">New Publications</label>
<div class="col-md-4">
<input id="newpublications" name="newpublications" type="text" placeholder="New Publications" class="form-control input-md">

</div>
</div>

<!-- Text input-->
<div class="form-group">
<label class="col-md-4 control-label" for="newlibraries">New Libraries</label>
<div class="col-md-4">
<input id="newlibraries" name="newlibraries" type="text" placeholder="New Libraries" class="form-control input-md">

</div>
</div>

<!-- Text input-->
<div class="form-group">
<label class="col-md-4 control-label" for="newbooks">New Books</label>
<div class="col-md-4">
<input id="newbooks" name="newbooks" type="text" placeholder="New Books" class="form-control input-md">

</div>
</div>
  <!-- Button -->
  <div class="form-group">
    <label class="col-md-8 control-label" for="submit"></label>
    <div class="col-md-4">
      <button id="submit" name="submit" class="btn btn-success">Submit</button>
    </div>
  </div>

  </fieldset>
</form>

    <script src="assets/jquery-1.11.3-jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
<?php ob_end_flush(); ?>
