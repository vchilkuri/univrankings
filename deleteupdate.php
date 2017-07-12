<?php
 ob_start();
 session_start();
 require_once 'dbconnection.php';

 // if session is not set this will redirect to login page
 if( !isset($_SESSION['admin_id']) ) {
  header("Location: adminhome.php");
  exit;
 } // select loggedin users detail
 $conn = mysqli_connect("localhost","vchilkur","vchilkur","vchilkur_db");
 $res=mysqli_query($conn,"SELECT * FROM admin_users WHERE admin_id=".$_SESSION['admin_id']);
 $userRow=mysqli_fetch_array($res);
 $_SESSION['admin_name']=$userRow['user_name'];


        include 'dbconnection.php';

        $del = $_POST['delete'];
       $deletequery = "UPDATE univ_academic, users_activity SET new_publications= NULL , new_libraries = NULL, new_books= NULL, sql_user=NULL, time_now = NULL, univ_academic.updatetime= NULL WHERE univ_academic.updatetime = users_activity.time_now";
       $conn = mysqli_connect($localhost, $username, $password, $database);
        if (mysqli_query($conn, $deletequery)) {
                echo "Record deleted successfully<br><br>";
                echo '<html>
                <body>
                <p> Return to <a href="adminhome.php">Home</a></p>
                </body>
                </html>';
        } else {
                echo "Error deleting record to univ_academic table: " . mysqli_error($conn)."<br><br>";
        }

 echo $deletequery;
 echo "<br><br>";
        mysqli_close($conn);

        ?>
