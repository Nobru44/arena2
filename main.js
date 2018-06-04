"use strict";

/*************CHOIX DES HEROS************/
var heroes;
var total;



/********** FONCTION***********************/

function onClickListHeroes()
{
    var selectedHeroes;
    this.classList.toggle('selectedHeroes');
    selectedHeroes = document.querySelectorAll('.listFigthers li.selectedHeroes');
    console.log(selectedHeroes);
    total.textContent = selectedHeroes.length;

}

/**************CODE PRINCIPAL************/

heroes = document.querySelectorAll('.listFigthers li');
total  = document.querySelector('#total em');



for(var i = 0; i < heroes.length; i++)
{
    heroes[i].addEventListener('click', onClickListHeroes);
}



/**********COMBAT************/





/*******FONCTION***********/
/*function





var figthers = document.querySelectorAll('.listFigthers li.selectedHeroes');
if (figthers == 2) {
    
}*/