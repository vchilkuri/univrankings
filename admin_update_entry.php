<?php

        include 'dbconnection.php';

       $ranking = $_POST['univ_name_rank'];
       $newranking = $_POST['newranking'];
       $confname = $_POST['confname'];
       $country = $_POST['country'];
       $score = $_POST['score'];
       $publications = $_POST['publications'];
       $national_rank = $_POST['national_rank'];
       $enrollment = $_POST['enrollment'];
       $sex_ratio = $_POST['sex_ratio'];
       $new_publications = $_POST['newpublications'];
       $new_libraries = $_POST['newlibraries'];
       $new_books = $_POST['newbooks'];

       $sql1= "UPDATE univ_rankings SET ranking='$newranking',institution='$confname', country='$country' WHERE ranking = '$ranking'";
       $sql2= "UPDATE scores SET ranking='$newranking',score='$score' WHERE ranking = '$ranking' ";
       $sql3= "UPDATE publication SET ranking='$newranking',publications='$publications' WHERE ranking = '$ranking'";
       $sql4= "UPDATE national SET ranking='$newranking',national_rank='$national_rank' WHERE ranking = '$ranking'";
       $sql5= "UPDATE enrollment SET ranking='$newranking',enrollment='$enrollment', sex_ratio='$sex_ratio' WHERE ranking = '$ranking'";
       $sql6= "UPDATE univ_academic SET new_publications= '$new_publications' ,new_libraries='$new_libraries', new_books='$new_books', updatetime= CURRENT_TIMESTAMP WHERE ranking = '$ranking'";
       $conn = mysqli_connect($localhost, $username, $password, $database);
        if (mysqli_query($conn, $sql1)) {
                echo "Record 1 inserted successfully<br><br>";

        } else {
                echo "Error inserting record to univ_rankings table: " . mysqli_error($conn)."<br><br>";
        }

        if (mysqli_query($conn, $sql2)) {
                echo "Record 2 inserted successfully<br><br>";
        } else {
                echo "Error inserting record to enrollment table: " . mysqli_error($conn)."<br><br>";
        }

        if (mysqli_query($conn, $sql3)) {
                echo "Record 3 inserted successfully<br><br>";
        } else {
                echo "Error inserting record to national table: " . mysqli_error($conn)."<br><br>";
        }

        if (mysqli_query($conn, $sql4)) {
                echo "Record 4 inserted successfully<br><br>";
        } else {
                echo "Error inserting record to publication table: " . mysqli_error($conn)."<br><br>";
        }

        if (mysqli_query($conn, $sql5)) {
                echo "Record 5 inserted successfully<br><br>";
        } else {
                echo "Error inserting record to scores table: " . mysqli_error($conn)."<br><br>";
        }
        if (mysqli_query($conn, $sql6)) {
                echo "Record 6 inserted successfully<br><br>";
                echo '<html>
                <body>
                <p> Return to <a href="adminhome.php">Home</a></p>
                </body>
                </html>';
        } else {
                echo "Error inserting record to univ_academic table: " . mysqli_error($conn)."<br><br>";
        }



        mysqli_close($conn);

        ?>
