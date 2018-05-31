<?php
function pre($thing) {
	echo "<pre>";
	print_r($thing);
	echo "</pre>";
}

function getHeroesList() {
	$sql = "SELECT * FROM heroes LEFT JOIN weapons ON weapons.id = heroes.weapon_id";

	$db = new PDO('mysql:host=localhost;dbname=arena', 'nobru974', 'cuba2018');

	$statement = $db->prepare($sql);
	$db->exec('SET NAMES UTF8');

	$statement->execute();
	$listHeroes = $statement->fetchAll(\PDO::FETCH_ASSOC);

	return $listHeroes;
}


function getWeaponsList() {
	$sql = "SELECT * FROM weapons ORDER BY id";

	$db = new PDO('mysql:host=localhost;dbname=arena', 'nobru974', 'cuba2018');

	$statement = $db->prepare($sql);
	$db->exec('SET NAMES UTF8');

	$statement->execute();
	$listWeapons = $statement->fetchAll(\PDO::FETCH_ASSOC);

	return $listWeapons;
}

function getConnection() {
	$user = 'nobru974';
	$password = 'cuba2018';
	$db = new PDO(
		'mysql:host=localhost;dbname=arena', 
		$user, 
		$password,
		array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING)
	);
	$db->exec('SET NAMES UTF8');
	return $db;
}


function addHeroe ($hero) {
	
	$db = getConnection();
	$sql = "INSERT INTO heroes (name, hp, armor, weapon_id, avatar) VALUES (:name, :hp, :armor, :weapon_id, :avatar)";
	$statement = $db->prepare($sql);
	$db->exec('SET NAMES UTF8');

	$statement->execute($hero);
}