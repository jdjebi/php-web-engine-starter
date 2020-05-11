<?php

require "src/init.php";

$q = $db->prepare("DELETE FROM user");
$q->execute();

Redirect::url("index.php");

?>
