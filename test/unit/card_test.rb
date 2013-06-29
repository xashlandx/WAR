require 'test_helper'

class CardTest < ActiveSupport::TestCase

  	#this tests to confirm that all cards have both a suit and a value
	#this in effect also tests if there are any Jokers
	#number of assertions = n x 2
    def test_for_suits_and_values
   		@testDeck = Card.find(:all) #build a fresh deck to test
		
		@testDeck.each do |testCard|
			if testCard.suit != "Hearts" && testCard.suit != "Diamonds" && testCard.suit != "Clubs" && testCard.suit != "Spades"
				assert false, "an incorrect suit is in the deck"
			else
				assert true
			end
			
			if testCard.value >= 2 && testCard.value <= 14
				assert true
			else
        		assert false, "an incorrect value is in the deck"
      		end
   		end #end loop
	end #end test







	#This is an alternate version for testing for suits and values.  This uses assert funtions
	#written using the test macro syntax
	#number of assertions = n x 2
	test "another test for missing suit or value" do
		@testDeck = Card.find(:all) #build a fresh deck to test
	
		@testDeck.each do |testCard|
			assert_not_nil(testCard.suit, "there is a missing suit")
			refute_nil(testCard.value, "there is a missing value")
		end
	end








	#this tests specifically if any of the cards have the name "Joker"
	#number of assertions = n
    def test_for_jokers
    	@testDeck = Card.find(:all)	 #build a fresh deck to test
    	
		@testDeck.each do |testCard|
			assert_not_equal(testCard.name, "Joker", "a joker was found")
		end
	end
 
   
end
