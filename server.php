<?php

$page = isset($_GET["page"]) && !empty($_GET["page"]) ? $_GET["page"] : 1;
$count = isset($_GET["count"]) && !empty($_GET["count"]) ? $_GET["count"] : 5;


if (!is_null($page) && !is_null($count)) {
    include_once './connection.php';
    $header = array(array("key" => 'name', 'name' => "Name"), array("key" => 'email', 'name' => "Email"), array("key" => 'mobile', 'name' => "Mobile"));
    $row_array = array();
    if ($page == 1) {
        $skip = "0";
    } else {
        $skip = $count * $page;
        $skip = $skip - $count;
    }
    $string_query = "SELECT  `name` , `email` ,`mobile` , ( SELECT COUNT( * )  FROM tbl_user ) AS  `count`  FROM tbl_user LIMIT  " . $skip . "," . $count;
    $result = mysql_query($string_query);
    if ($result) {
        while ($rows = mysql_fetch_assoc($result)) {
            array_push($row_array, $rows);
            $size = $rows["count"];
        }
    }
    $pagination = array("count" => $count, "page" => $page, 'pages' => intval( $size  / $count), 'size' => intval( $size ));
    $order = array("sort" => 'name', "sort-order" => 'asc');
    $json_array = array("header" => $header, "rows" => $row_array, "pagination" => $pagination);
    $json = array_merge($json_array, $order);
    echo json_encode($json);
}