class Decks < ActiveRecord::Migration
  #create the decks table
  def up
 		 create_table :decks do |t|
			t.column :name, :string
      		t.timestamps
  		end
	
		#create initial 3 decks
		Deck.create :name => "newDeck"
		Deck.create :name => "computerDeck"
		Deck.create :name => "playerDeck"
  end

  def down
  	drop_table :decks
  end
end
