<?php
$page = "create";
include '../bootstrap.php';


$weaponsList = getWeaponsList();

if (isset($_POST['submit'])) {
$name = $_POST['name'];
$hp = $_POST['hp'];
$armor = $_POST['armor'];
$weapon_id = $_POST['weapon'];
$avatar = $_POST['avatar'];
$hero = [];
$hero['name'] = $name;  
$hero['hp'] =$hp;
$hero['armor'] = $armor;
$hero['weapon_id'] = $weapon_id;
$hero['avatar'] = $avatar;
pre($hero);
addHeroe($hero);
exit;
} else { ?>
	<h4>Réessayez de créer votre héros</h4>
<?php
}





include '../views/create.phtml';


