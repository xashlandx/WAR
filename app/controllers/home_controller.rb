# home controller
class HomeController < ApplicationController
	layout 'standard'
	
	def index
		render :view => 'index'
	end
	
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
	
	def gameOver
		@userName = params[:userName]
		render :view => 'gameOver'
		#render :nothing => true
	end
	
	
end
