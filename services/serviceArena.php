<?php
function pre($thing) {
	echo "<pre>";
	print_r($thing);
	echo "</pre>";
}

function getHeroesList() {
	$sql = "SELECT * FROM heroes LEFT JOIN weapons ON weapons.id = heroes.weapon_id";

	$db = new PDO('mysql:host=localhost;dbname=arena', 'root', 'troiswa');

	$statement = $db->prepare($sql);
	$db->exec('SET NAMES UTF8');

	$statement->execute();
	$listHeroes = $statement->fetchAll(\PDO::FETCH_ASSOC);

	return $listHeroes;
}


function getWeaponsList() {
	$sql = "SELECT * FROM weapons ORDER BY id";

	$db = new PDO('mysql:host=localhost;dbname=arena', 'root', 'troiswa');

	$statement = $db->prepare($sql);
	$db->exec('SET NAMES UTF8');

	$statement->execute();
	$listWeapons = $statement->fetchAll(\PDO::FETCH_ASSOC);

	return $listWeapons;
}

function getConnection() {
	$user = 'root';
	$password = 'troiswa';
	$db = new PDO(
		'mysql:host=localhost;dbname=arena', 
		$user, 
		$password,
		array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING)
	);
	$db->exec('SET NAMES UTF8');
	return $db;
}
