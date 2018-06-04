<?php 
$page = "list";
include '../bootstrap.php';

$heroes = getHeroesList();

include '../views/list.phtml';

$nameHero = $_GET['remove'];

if (isset($nameHero) AND getHeroByName($nameHero) != null) {
	removeHero($nameHero);
	echo "Ce héros est éliminé";
	header('Location: home.php');
} else {
	echo "Je ne comprends pas votre requête";
}


include '../views/footer.phtml';
?>