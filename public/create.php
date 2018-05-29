<?php
$page = "create";
include '../bootstrap.php';


$weaponsList = getWeaponsList();
pre($weaponsList);

$name = $_POST['name'];
$hp = $_POST['hp'];
$armor = $_POST['armor'];
$weapon_id = $_POST['id'];
$avatar = $_POST['avatar'];

$hero = [$name, $hp, $armor, $weapon_id, $avatar];

pre($hero);
// addHeroe($hero);


include '../views/create.phtml';


