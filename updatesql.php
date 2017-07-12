<?php
 ob_start();
 session_start();
 require_once 'dbconnection.php';

 // if session is not set this will redirect to login page
 if( !isset($_SESSION['user_id']) ) {
  header("Location: update_entry.php");
  $_SESSION['query']= $ask1;
  echo $_SESSION['query'];
  exit;
 } // select loggedin users detail
 $conn = mysqli_connect("localhost","vchilkur","vchilkur","vchilkur_db");
 $res=mysqli_query($conn,"SELECT * FROM registered_users WHERE user_id=".$_SESSION['user_id']);
 $userRow=mysqli_fetch_array($res);
 $_SESSION['emailid']=$userRow['email'];




         include 'dbconnection.php';


        $ask2= "INSERT INTO users_activity(`sql_user`, `user_id`) VALUES (".$_SESSION['query'].",".$_SESSION['user_id'].")";
        $conn = mysqli_connect($localhost, $username, $password, $database);
         if (mysqli_query($conn, $ask2)) {
                 echo "Record 1 inserted successfully<br><br>";
                 echo '<html>
                 <body>
                 <p> Return to <a href="loginhome.php">Home</a></p>
                 </body>
                 </html>';
         } else {
                 echo "Error inserting record to univ_academic table: " . mysqli_error($conn)."<br><br>";
         }




         mysqli_close($conn);


?>
