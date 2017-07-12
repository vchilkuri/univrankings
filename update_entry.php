<?php
 ob_start();
 session_start();
 require_once 'dbconnection.php';

 // if session is not set this will redirect to login page
 if( !isset($_SESSION['user_id']) ) {
  header("Location: loginform.php");
  exit;
 } // select loggedin users detail
 $conn = mysqli_connect("localhost","vchilkur","vchilkur","vchilkur_db");
 $res=mysqli_query($conn,"SELECT * FROM registered_users WHERE user_id=".$_SESSION['user_id']);
 $userRow=mysqli_fetch_array($res);
 $_SESSION['emailid']=$userRow['email'];


        include 'dbconnection.php';

       $ranking = $_POST['univ_name'];
       $new_publications = $_POST['newpublications'];
       $new_libraries = $_POST['newlibraries'];
       $new_books = $_POST['newbooks'];


       $ask1= "UPDATE univ_academic SET new_publications= ".$new_publications." ,new_libraries=".$new_libraries.", new_books=".$new_books.", updatetime= CURRENT_TIMESTAMP WHERE ranking = ".$ranking."";
       $conn = mysqli_connect($localhost, $username, $password, $database);
        if (mysqli_query($conn, $ask1)) {
                echo "Record 1 inserted successfully<br><br>";
        } else {
                echo "Error inserting record to univ_academic table: " . mysqli_error($conn)."<br><br>";
        }

 echo $ask1;
 echo "<br><br>";
  $conn = mysqli_connect($localhost, $username, $password, $database);
 $column1=mysqli_real_escape_string($conn,$_SESSION['user_id']);
$column2=mysqli_real_escape_string($conn,$ask1);
 $ask2 = "INSERT INTO `users_activity`(`user_id`,`sql_user`,`time_now`) VALUES ('$column1', '$column2', CURRENT_TIMESTAMP)";

  if (mysqli_query($conn, $ask2)) {
          echo "Record 2 inserted successfully<br><br>";
          echo '<html>
          <body>
          <p> Return to <a href="loginhome.php">Home</a></p>
          </body>
          </html>';

  } else {
          echo "Error inserting record to users_activity table: " . mysqli_error($conn)."<br><br>";
  }
        mysqli_close($conn);

        ?>
