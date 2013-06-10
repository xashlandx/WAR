# home controller
class HomeController < ApplicationController
	layout 'standard'
	def battle
		@userName = params[:userName]
		newGame
		render :view => 'battle'
	end
	
	def newGame
		#build a fresh deck
		@deck = Card.find(:all)
		
		#shuffle the deck
		@deck = @deck.shuffle
		 
		#deal the deck
		
		@playerDeck = @deck.to(25)
		@computerDeck = @deck.from(26)
		
	end
	
	
end
