<?php
  include 'dbconnection.php';

  $employeeid = $_POST['employeeid'];
  $titleofcourtesy = $_POST['titleofcourtesy'];
  $firstname = $_POST['firstname'];
  $lastname = $_POST['lastname'];
  $title = $_POST['title'];
  $dateofbirth = $_POST['dateofbirth'];
  $hiredate = $_POST['hiredate'];
  $address = $_POST['address'];
  $city = $_POST['city'];
  $region = $_POST['region'];
  $postalcode = $_POST['postalcode'];
  $country = $_POST['country'];
  $homephone = $_POST['homephone'];
  $extension = $_POST['extension'];

$conn = mysqli_connect($localhost, $username, $password, $database);
$sql = "UPDATE employees SET EmployeeID = '$employeeid', FirstName='$firstname', LastName='$lastname', Title='$title', TitleOfCourtesy='$titleofcourtesy', BirthDate= '$dateofbirth', HireDate='$hiredate', Address='$address', City='$city', Region='$region', PostalCode='$postalcode', Country= '$country',HomePhone='$homephone',Extension='$extension' WHERE EmployeeID='$employeeid'";
if (mysqli_query($conn, $sql)) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . mysqli_error($conn);
}


$target_dir = "employees/";
$target_file = $target_dir . basename($_FILES["image"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["image"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
       // header ("Location: imageupload.html?error=filenotimage");
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    //header ("Location: mageupload.html?error=fileexists");
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["image"]["size"] > 500000) {
    //header ("Location: mageupload.html?error=filetoolarge");
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" && $imageFileType != "JPG" ) {
    //header ("Location: mageupload.html?error=fileformatnotsupported");
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    //header ("Location: mageupload.html?error=filenotuploaded1");
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded.";
    } else {
        //header ("Location: mageupload.html?error=fileuploaderror");
        echo "Sorry, there was an error uploading your file.";
    }
}





$name= basename($_FILES["image"]["name"]);


        $sql= "UPDATE employeeimages SET name='".$name."' WHERE employeeid= ".$employeeid;
            if (mysqli_query($conn, $sql)) {
                   echo "<br><br>Record inserted successfully to employeeimages";
            } else {
                   echo "Error inserting record to employeeimages: " . mysqli_error($conn);
            }


        mysqli_close($conn);
?>
