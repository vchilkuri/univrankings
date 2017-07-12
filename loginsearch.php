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
<style>
h1 {
    text-align: center;
}
p {
    text-align: center;
}
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
      <div>
        <h3>Please select a country or university name</h3>
        <h3>Please select a country or university name</h3>
   </div>
   <div align="center">
   <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
   <input type="text" id="search_value" name="search_value">
   <input type="submit" name="SEARCH" value="Search">
   </form>

   </div>

   <?php
   require_once('dbconnection.php');

   $dbc = mysqli_connect($localhost, $username, $password, $database);

   mysqli_set_charset($dbc,"utf8"); // to ensure ACCENTS DO NOT CORRUPT

   // $result_display="";
   if (!empty($_POST['SEARCH']) && !empty($_POST['search_value'])) {

    $input = mysqli_real_escape_string($dbc, trim($_POST['search_value'])); //security added
   $query = " SELECT univ_rankings.ranking, univ_rankings.institution, univ_rankings.country, scores.score, publication.publications, national.national_rank, enrollment.enrollment, enrollment.sex_ratio, univ_academic.new_publications, univ_academic.new_libraries, univ_academic.new_books FROM univ_rankings, enrollment, scores, publication, national, univ_academic WHERE univ_rankings.ranking = scores.ranking and univ_rankings.ranking= publication.ranking and univ_rankings.ranking = enrollment.ranking and univ_rankings.ranking = publication.ranking and univ_rankings.ranking = national.ranking and univ_rankings.ranking = univ_academic.ranking and (univ_rankings.country LIKE '$input' OR univ_rankings.institution LIKE '%$input%') ";

    $results = mysqli_query($dbc, $query);

      $rowcount=mysqli_num_rows($results);

      if(mysqli_num_rows($results)>0)
    {

    print "<table><tr><th>Ranking</th><th>Univerity Name</th><th>Country</th><th>Score</th><th>Publications</th><th>National Rank</th><th>Enrollment</th><th>Sex Ratio</th><th>New Publications</th><th>New Libraries</th><th>New Books</th></tr>";

    while ($row = mysqli_fetch_array($results)) {
      print "<tr><td>{$row['ranking']}</td><td>{$row['institution']}</td>
             <td>{$row['country']}</td><td>{$row['score']}</td><td>{$row['publications']}</td>
             <td>{$row['national_rank']}</td><td>{$row['enrollment']}</td><td>{$row['sex_ratio']}</td>
             <td>{$row['new_publications']}</td><td>{$row['new_libraries']}</td><td>{$row['new_books']}</td></tr>";

    }

   	print"</table>";
   }

    else {

   	  print '<p>Could not retrieve the data.</p><p>The query being run was: ' . $query . '</p>';
      		}
   mysqli_close($dbc);
   }

   ?>
    <script src="assets/jquery-1.11.3-jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
<?php ob_end_flush(); ?>
