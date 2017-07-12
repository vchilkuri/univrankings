<?php
   session_start();
   unset($_SESSION["username"]);
   unset($_SESSION["password"]);
   if(session_destroy()) // Destroying All Sessions
   {
   header("Location: home.html"); // Redirecting To Home Page
   }

?>
