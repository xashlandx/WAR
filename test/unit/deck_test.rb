require 'test_helper'

class DeckTest < ActiveSupport::TestCase
  
  
  
  
  #This tests the deck size
  #becuase the test data is small it always fails
   test "deck size" do
   	 #build a fresh deck to test
	 @testDeck = Card.find(:all)
     assert_equal 52, @testDeck.size, "the deck size does not equal 52"
   end
   
   
   
   
   
   
   #This tests that each card is unique
   #This version is for short data sets n^2 number of assertions
   #A larger data set would need a quick sort style recursion test
   def test_cards_are_unique
     #build a fresh deck to test
	 @testDeck = Card.find(:all)
	 
	 $i=0
	 while $i < @testDeck.count do
		$k=0
	 	while $k < @testDeck.count do
			if @testDeck[$i].value == @testDeck[$k].value && @testDeck[$i].suit == @testDeck[$k].suit && $i!=$k
				assert false, "A double card has been found"
			else
				assert true
			end #end if
			$k+=1
		end #end inner loop
		$i+=1
	 end #end outer loop
   end # end test_cards_are_unique
   
  
  
  
   #This tests that each card is unique
   #This version uses two bubble sorts to sort by value and suit before comparing
   #This is less efficient but shows another option
   #n-1 assertions
   def test_cards_are_unique_bubble
      
	   #build a fresh deck to test
	   @testDeck = Card.find(:all)
		
		#sort the suits
		
		#bubble sort the values	
		@swapped=true
		while @swapped != false
			@swapped=false
			@i=0
			while @i < @testDeck.count-1 do
				if @testDeck[@i].value > @testDeck[@i+1].value 
					@buff = @testDeck[@i]
					@testDeck[@i] = @testDeck[@i+1]
					@testDeck[@i+1] = @buff
					@swapped=true
				end #end if
				@i+=1
			end # while
		end # end outer while 
		
			
		#sort by suit within each value
		@i=0
		while @i < @testDeck.count-1 do
			#determine size of sub bubble
			@groupCt=1

			while @testDeck[@i].value == @testDeck[@i+@groupCt].value do
				@groupCt+=1
				if @i+@groupCt > @testDeck.count-1
					break
				end
			end #end ct creation

			#bubble sort the suits	
			@swapped=true
			while @swapped != false
				@swapped=false
				@k=0
				
				while @k < @groupCt-1 do
					if (@testDeck[@i+@k].suit <=> @testDeck[@i+@k+1].suit) == 1
						@buff = @testDeck[@i+@k]
						@testDeck[@i+@k] = @testDeck[@i+@k+1]
						@testDeck[@i+@k+1] = @buff
						@swapped=true
					end #end if
					@k+=1
				
				end # while
			end # end outer while
			
			@i+=@groupCt
		end		
	
		#iterate through the sorted values and look for doubles
		@i=0
		while @i < @testDeck.count-1 do
			if @testDeck[@i].value == @testDeck[@i+1].value && @testDeck[@i].suit == @testDeck[@i+1].suit
				assert false, "A double card has been found"
			else
				assert true
			end #end if
			@i+=1
		end
	
		#test output
		#@testDeck.each do |testCard|
			#puts testCard.value
			#puts testCard.suit
		#end
		
   end # test_cards_are_unique_bubble
   
    
end
