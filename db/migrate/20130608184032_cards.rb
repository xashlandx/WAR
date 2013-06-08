class Cards < ActiveRecord::Migration
  #create the cards table
  def up
      create_table :cards do |t|
		t.column :value, :integer
		t.column :name, :string
		t.column :suit, :string
		t.column :image, :string
		t.column :created_at, :timestamp
      	t.timestamps
      end
  
	  #create initial 52 cards
	  #Hearts
	  Card.create :value => 2, :name => "Two of Hearts", :suit => "hearts", :image => ""	  
	  Card.create :value => 3, :name => "Three of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 4, :name => "Four of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 5, :name => "Five of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 6, :name => "Six of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 7, :name => "Seven of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 8, :name => "Eight of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 9, :name => "Nine of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 10, :name => "Ten of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 11, :name => "Jack of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 12, :name => "Queen of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 13, :name => "King of Hearts", :suit => "hearts", :image => ""
	  Card.create :value => 14, :name => "Ace of Hearts", :suit => "hearts", :image => ""
	  
	  #Diamonds
	  Card.create :value => 2, :name => "Two of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 3, :name => "Three of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 4, :name => "Four of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 5, :name => "Five of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 6, :name => "Six of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 7, :name => "Seven of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 8, :name => "Eight of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 9, :name => "Nine of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 10, :name => "Ten of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 11, :name => "Jack of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 12, :name => "Queen of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 13, :name => "King of Diamonds", :suit => "Diamonds", :image => ""
	  Card.create :value => 14, :name => "Ace of Diamonds", :suit => "Diamonds", :image => ""
	  
	  #Spades
	  Card.create :value => 2, :name => "Two of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 3, :name => "Three of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 4, :name => "Four of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 5, :name => "Five of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 6, :name => "Six of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 7, :name => "Seven of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 8, :name => "Eight of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 9, :name => "Nine of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 10, :name => "Ten of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 11, :name => "Jack of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 12, :name => "Queen of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 13, :name => "King of Spades", :suit => "Spades", :image => ""
	  Card.create :value => 14, :name => "Ace of Spades", :suit => "Spades", :image => ""
	  
	  #Clubs
	  Card.create :value => 2, :name => "Two of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 3, :name => "Three of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 4, :name => "Four of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 5, :name => "Five of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 6, :name => "Six of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 7, :name => "Seven of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 8, :name => "Eight of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 9, :name => "Nine of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 10, :name => "Ten of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 11, :name => "Jack of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 12, :name => "Queen of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 13, :name => "King of Clubs", :suit => "Clubs", :image => ""
	  Card.create :value => 14, :name => "Ace of Clubs", :suit => "Clubs", :image => ""

  end

  def down
  	drop_table :cards
  end
end
