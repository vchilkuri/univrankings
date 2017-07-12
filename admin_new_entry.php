<?php

        include 'dbconnection.php';

       $ranking = $_POST['ranking'];
       $univ_name = $_POST['univ_name'];
       $country = $_POST['country'];
       $score = $_POST['score'];
       $publications = $_POST['publications'];
       $national_rank = $_POST['national_rank'];
       $enrollment = $_POST['enrollment'];
       $sex_ratio = $_POST['sex_ratio'];

       $sql1= "INSERT INTO univ_rankings(`ranking`,`institution`, `country`) VALUES ('.$ranking.', '.$univ_name.', '.$country.')";
       $sql2= "INSERT INTO scores(`ranking`,`score`) VALUES ('.$ranking.', '.$score.')";
       $sql3= "INSERT INTO publication(`ranking`,`publications`) VALUES ('.$ranking.', '.$publications.')";
       $sql4= "INSERT INTO national(`ranking`,`national_rank`) VALUES ('.$ranking.', '.$national_rank.')";
       $sql5= "INSERT INTO enrollment(`ranking`,`enrollment`, `sex_ratio`) VALUES ('.$ranking.', '.$enrollment.', '.$sex_ratio.')";
       $sql6= "INSERT INTO univ_academic(`ranking`,`institution`, `country`, `updatetime`) VALUES ('.$ranking.', '.$univ_name.', '.$country.',CURRENT_TIMESTAMP)";
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
