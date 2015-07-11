<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$host = "localhost";
$username = "root";
$password = "";
$db_name = "db_angularjs_pagination";

$connect = mysql_connect($host, $username, $password);
$con_result = mysql_select_db($db_name, $connect);
if (!$con_result) {
    die("Database Connection Failed");
}
