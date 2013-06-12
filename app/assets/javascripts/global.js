/**************** Homepage functions  *******************/


//Starting function for all hands
function playHand(){

	showCards(playerDeck[0], enemyDeck[0]);
	compareCards(playerDeck[0], enemyDeck[0]);
	
}


//display the first card info
function showCards(playerCard, enemyCard){

	//show player card
	var cardImg=document.createElement("img");
	cardImg.setAttribute('src',  '/assets/'+playerCard.image);
	cardImg.setAttribute('id', 'playerCard'+ 0);
	document.getElementById("playerCardSpace").appendChild(cardImg);
	
	var playerBlock=document.createElement("div");
	var playerNode=document.createTextNode(playerCard.name +" of " + playerCard.suit);
	playerBlock.setAttribute('class', 'cardBlock');
	playerBlock.setAttribute('id', 'playerCardBlock'+ 0);
	playerBlock.appendChild(playerNode);
	document.getElementById("playerCardSpace").appendChild(playerBlock);
	
	//show enemy card
	var cardImg=document.createElement("img");
	cardImg.setAttribute('src',  '/assets/'+enemyCard.image);
	cardImg.setAttribute('id', 'enemyCard'+ 0);
	document.getElementById("enemyCardSpace").appendChild(cardImg);
	
	var enemyBlock=document.createElement("div");
	var enemyNode=document.createTextNode(enemyCard.name +" of " + enemyCard.suit);
	enemyBlock.setAttribute('class', 'cardBlock');
	enemyBlock.setAttribute('id', 'enemyCardBlock'+ 0);
	enemyBlock.appendChild(enemyNode);
	document.getElementById("enemyCardSpace").appendChild(enemyBlock);
}


//compare the first card played
function compareCards(playerCard, enemyCard){
	
	if (playerCard.value > enemyCard.value){  
		//player wins hand
		document.getElementById("dealerText").innerHTML="You WIN this fight!";
		document.getElementById("actionButton").innerHTML="Take your cards";
		document.getElementById("actionButton").onclick = function () { cleanField() };
		
		//collect cards in play
		collectCards(playerDeck, 1);
		popCards(1);
	}
	else if(playerCard.value < enemyCard.value){
		//enemy wins hand
		document.getElementById("dealerText").innerHTML="You LOSE this fight";
		document.getElementById("actionButton").innerHTML="Hand over your cards";
		document.getElementById("actionButton").onclick = function () { cleanField() };
		
		//collect cards in play
		collectCards(enemyDeck, 1);
		popCards(1);
	}
	else if(playerCard.value == enemyCard.value){
		//tie start war funtions
		document.getElementById("dealerText").innerHTML="Let's get ready to RUMBLE!";
		document.getElementById("actionButton").innerHTML="Flip the card";
		document.getElementById("actionButton").onclick = function () { tieCompare(1) };
		winnerCheck(4);
		
		setTheStage(1);
	}

}
			  

// decide winner when there is a tie
function tieCompare(cardsInPlayCount){
	
	//add to cards in play
	cardsInPlayCount=cardsInPlayCount+3;
	cardsHidden=3;
	winnerCheck(cardsInPlayCount);
	
	//flip and compare the three cards in reverse order
	flipCard(cardsInPlayCount, 1);
}


function flipCard(cardsInPlayCount, flipCardCt){
				
		var cardIndex = cardsInPlayCount-flipCardCt;
		//alert("i = "+cardIndex +" card in play ct = " + cardsInPlayCount + " flipCardCt = " + flipCardCt + " cardshidden " + cardsHidden);
		
			//visually show fliped card 
			showFlipedCard(cardIndex);
		
		if (playerDeck[cardIndex].value > enemyDeck[cardIndex].value){
			//player wins hand
			document.getElementById("dealerText").innerHTML="You WIN this fight!";
			document.getElementById("actionButton").innerHTML="Take your cards";
			document.getElementById("actionButton").onclick = function () { cleanField() };
			
			//collect cards in play
			collectCards(playerDeck, cardsInPlayCount);
			popCards(cardsInPlayCount);
			
		}
		else if(playerDeck[cardIndex].value < enemyDeck[cardIndex].value){
			//enemy wins hand
			document.getElementById("dealerText").innerHTML="You LOSE this fight";
			document.getElementById("actionButton").innerHTML="Hand over your cards";
			document.getElementById("actionButton").onclick = function () { cleanField() };
			
			//collect cards in play
			collectCards(enemyDeck, cardsInPlayCount);
			popCards(cardsInPlayCount);
		}
		else if(playerDeck[cardIndex].value == enemyDeck[cardIndex].value){
			document.getElementById("dealerText").innerHTML="The war rages on!";
			document.getElementById("actionButton").innerHTML="Continue the battle";
			document.getElementById("actionButton").onclick = function () { flipCard(cardsInPlayCount, flipCardCt+1) };
		}
		
		if (flipCardCt>2){
			setTheStage(cardsInPlayCount);
			document.getElementById("actionButton").onclick = function () { tieCompare(cardsInPlayCount) };
			//another war
		}
}


// update the display for a war
function showFlipedCard(cardIndex){
	
	var playerCardImg = document.getElementById('playerCard'+cardIndex);
	var playerCardBlock = document.getElementById('playerCardBlock'+cardIndex);
	var enemyCardImg = document.getElementById('enemyCard'+cardIndex);
	var enemyCardBlock = document.getElementById('enemyCardBlock'+cardIndex);
	
	//show player cards
	
	playerCardImg.src='/assets/'+playerDeck[cardIndex].image;
	playerCardBlock.innerHTML=playerDeck[cardIndex].name +" of " + playerDeck[cardIndex].suit;
	
	//show enemy cards
	enemyCardImg.src='/assets/'+enemyDeck[cardIndex].image;
	enemyCardBlock.innerHTML=enemyDeck[cardIndex].name +" of " + enemyDeck[cardIndex].suit;

}


// remove the top card from both decks
function popCards(cardsInPlayCount){
	for(i=0; i < cardsInPlayCount; i++){
		playerDeck.shift();
		enemyDeck.shift();	
	}
}


//collect the cards
function collectCards(winningDeck, cardsInPlayCount){
	//alert(cardsInPlayCount + " cards in play");
	for(i=0; i < cardsInPlayCount; i++){
		winningDeck.push(playerDeck[i]);
		//alert(playerDeck[i].name + " added");
		winningDeck.push(enemyDeck[i]);
		//alert(enemyDeck[i].name + " added");
	}
}


//clear the playing field and update the display
function cleanField(){
		document.getElementById("playerCardSpace").innerHTML="";
		document.getElementById("enemyCardSpace").innerHTML="";
		document.getElementById("dealerText").innerHTML="Fight";
		document.getElementById("actionButton").innerHTML="Draw";
		document.getElementById("actionButton").onclick = function () { playHand() };
		document.getElementById("playerDeckCount").innerHTML=playerDeck.length;
		document.getElementById("enemyDeckCount").innerHTML=enemyDeck.length;
		
		winnerCheck(1);
		//alert(playerDeck.length +" player cards = " + enemyDeck.length +" enemy cards ");
		//alert(playerDeck[playerDeck.length-1].name);
}


//check if there is a winner
function winnerCheck(check){

	if(playerDeck.length < check){
		//player loses
		alert("Game over you Lost!");
		window.navigate("/home/end");
	}else if(enemyDeck.length < check){
		//player wins
		alert("Game over you Won!");
		window.navigate("/home/end");
		
	}

}


//update the view with coverd cards
function setTheStage(cardIndex){
	
		
		for(i=0;i<3;i++){
		//show player cards
		var cardImg=document.createElement("img");
		cardImg.setAttribute('src',  '/assets/blue_deck.png');
		cardImg.setAttribute('id', 'playerCard'+ cardIndex);
		document.getElementById("playerCardSpace").appendChild(cardImg);
		
		var playerBlock=document.createElement("div");
		var playerNode=document.createTextNode("Mystery Card");
		playerBlock.setAttribute('class', 'cardBlock');
		playerBlock.setAttribute('id', 'playerCardBlock'+ cardIndex);
		playerBlock.appendChild(playerNode);
		document.getElementById("playerCardSpace").appendChild(playerBlock);
		
		//show enemy cards
		var cardImg=document.createElement("img");
		cardImg.setAttribute('src',  '/assets/red_deck.png');
		cardImg.setAttribute('id', 'enemyCard'+ cardIndex);
		document.getElementById("enemyCardSpace").appendChild(cardImg);
		
		var enemyBlock=document.createElement("div");
		var enemyNode=document.createTextNode("Mystery Card");
		enemyBlock.setAttribute('class', 'cardBlock');
		enemyBlock.setAttribute('id', 'enemyCardBlock'+ cardIndex);
		enemyBlock.appendChild(enemyNode);
		document.getElementById("enemyCardSpace").appendChild(enemyBlock);
		
		cardIndex++;
		}
}
					  

//Auto complete