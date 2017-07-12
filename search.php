<html lang="en">
<head>
  <meta charset="utf-8">
  <title>The HTML5 Herald</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</head>
<body>
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="home.html">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li role="presentation"><a href="rankings.php">Rankings</a></li>
        <li role="presentation"><a href="search.php">Search a university</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="adminlogin.php">Admin</a></li>
            <li><a href="userlogin.php">User</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Rankings Query</title>
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

<h1>Please select a country or university name</h1>
<p> <a href="userlogin.php">Login</a> to explore more.</p>
</hgroup>

<div align="center">
<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<input type="text" id="search_value" name="search_value">
<input type="submit" name="SEARCH" value="Search">
</form>

</div>
</body>
</html>

<?php
require_once('dbconnection.php');

$dbc = mysqli_connect($localhost, $username, $password, $database);

mysqli_set_charset($dbc,"utf8"); // to ensure ACCENTS DO NOT CORRUPT

// $result_display="";
if (!empty($_POST['SEARCH']) && !empty($_POST['search_value'])) {

 $input = mysqli_real_escape_string($dbc, trim($_POST['search_value'])); //security added
$query = " SELECT univ_rankings.ranking, univ_rankings.country,univ_rankings.institution FROM univ_rankings where (univ_rankings.country LIKE '$input' OR univ_rankings.institution LIKE '%$input%') ";

 $results = mysqli_query($dbc, $query);

   $rowcount=mysqli_num_rows($results);

   if(mysqli_num_rows($results)>0)
 {

    	print "<table><tr><th>Ranking</th><th>Univerity Name</th><th>Country</th></tr>";

		while ($row = mysqli_fetch_array($results)) {


		print"<tr><td>{$row['ranking']}</td><td>{$row['institution']}</td><td>{$row['country']}</td></tr>";
		}

	print"</table>";
}

 else {

	  print '<p>Could not retrieve the data.</p><p>The query being run was: ' . $query . '</p>';
   		}
mysqli_close($dbc);
}

?>
