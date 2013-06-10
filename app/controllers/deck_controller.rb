class DeckController < ApplicationController
	layout 'standard'
	def newGame
		#build a fresh deck
		@deck = Card.find(:all)
		
		#shuffle the deck
		@deck = @deck.shuffle
		 
		#deal the deck
		
		@playerDeck = @deck.to(25)
		@computerDeck = @deck.from(26)
		
		render 'home/battle'
	end


end
