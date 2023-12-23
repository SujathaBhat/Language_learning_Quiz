
// Create a session and redirect to the location specified in the query string. This is a hack to avoid having to re - use the session

<?php 
session_start();
if(isset($_SESSION['email'])){
session_destroy();}
$ref= @$_GET['q'];
header("location:$ref");
?>