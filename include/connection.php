<?php
defined('BASEPATH') or die("No access direct allowed");

$host = 'localhost';
$user = 'root';
$pass = '4dm1n@smktp';
$db   = 'pildanyon';

$con  = new mysqli($host, $user, $pass, $db) or die(mysqli_error());

?>
