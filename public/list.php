<?php 
$page = "list";
include '../bootstrap.php';

$heroes = getHeroesList();

include '../views/list.phtml';
