<?php
 ob_start();
 session_start();
 require_once 'dbconnection.php';

 // if session is not set this will redirect to login page
 if( !isset($_SESSION['admin_id']) ) {
  header("Location: adminlogin.php");
  exit;
 } // select loggedin users detail
 $conn = mysqli_connect("localhost","vchilkur","vchilkur","vchilkur_db");
 $res=mysqli_query($conn,"SELECT * FROM admin_users WHERE admin_id=".$_SESSION['admin_id']);
 $userRow=mysqli_fetch_array($res);
 $_SESSION['admin_name']=$userRow['user_name'];

?>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Welcome - <?php echo $_SESSION['admin_name']; ?></title>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"  />
<link rel="stylesheet" href="style.css" type="text/css" />
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 80%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
<title>Welcome - <?php echo $_SESSION['admin_name']; ?></title>
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
          <a class="navbar-brand" href="adminhome.php">Home</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="adminrankings.php">Rankings</a></li>
            <li><a href="userinfo.php">User Info</a></li>
            <li><a href="adminform.php">Add/Update Information</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
     <span class="glyphicon glyphicon-user"></span>&nbsp;Hi' <?php echo $userRow['user_name']; ?>&nbsp;<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="adminlogout.php?logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
      <div>
     <h3>Welcome to Univeristy Rankings</h3>
     <h3>Welcome Admin</h3>
     <h3> Here is the User List</h3>
   </div>
   <?php
   require_once('dbconnection.php');
   $id = $_GET["user_id"];
   $dbc = mysqli_connect($localhost, $username, $password, $database);

   $query = "SELECT registered_users.user_id as usid, registered_users.user_name, registered_users.first_name, registered_users.last_name, registered_users.password, registered_users.email, registered_users.gender, users_activity.sql_user, users_activity.time_now FROM registered_users JOIN users_activity on registered_users.user_id = users_activity.user_id  WHERE registered_users.user_id=".$id;
   $result = mysqli_query($conn, $query);
   $rowcount=mysqli_num_rows($result);
   $button = '<form action="deleteupdate.php" method="post" id="frmLogin">
   <div class="field-group">
 		<div><input type="submit" name="delete" value="delete" class="form-submit-button"></span>
 	</div>
  </form>';

   if (mysqli_num_rows($result) > 0) {

   	print "<table><tr><th>User ID</th><th>User Name</th><th>First Name</th><th>Last Name</th><th>Password</th><th>Email</th><th>Gender</th><th>Sql User</th><th>Time & Date</th><th>Delete the activity</th></tr>";

   	while ($row = mysqli_fetch_array($result)) {
   		print "<tr><td>{$row['usid']}</td><td>{$row['user_name']}</td>
   		       <td>{$row['first_name']}</td><td>{$row['last_name']}</td>
             <td>{$row['password']}</td><td>{$row['email']}</td>
             <td>{$row['gender']}</td><td>{$row['sql_user']}</td>
             <td>{$row['time_now']}</td><td>{$button}</td></tr>";

   	}
   print "</table>";

   } else {
   	print '<p>This User has not contributed anything yet!!.</p><p>The query being run was: ' . $query . '</p>';
   }
   mysqli_close($dbc);
   ?>

    <script src="assets/jquery-1.11.3-jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
<?php ob_end_flush(); ?>
