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
	  Card.create :value => 2, :name => "Two", :suit => "hearts", :image => ""	  
	  Card.create :value => 3, :name => "Three", :suit => "hearts", :image => ""
	  Card.create :value => 4, :name => "Four", :suit => "hearts", :image => ""
	  Card.create :value => 5, :name => "Five", :suit => "hearts", :image => ""
	  Card.create :value => 6, :name => "Six", :suit => "hearts", :image => ""
	  Card.create :value => 7, :name => "Seven", :suit => "hearts", :image => ""
	  Card.create :value => 8, :name => "Eight", :suit => "hearts", :image => ""
	  Card.create :value => 9, :name => "Nine", :suit => "hearts", :image => ""
	  Card.create :value => 10, :name => "Ten", :suit => "hearts", :image => ""
	  Card.create :value => 11, :name => "Jack", :suit => "hearts", :image => ""
	  Card.create :value => 12, :name => "Queen", :suit => "hearts", :image => ""
	  Card.create :value => 13, :name => "King", :suit => "hearts", :image => ""
	  Card.create :value => 14, :name => "Ace", :suit => "hearts", :image => ""
	  
	  #Diamonds
	  Card.create :value => 2, :name => "Two", :suit => "Diamonds", :image => ""
	  Card.create :value => 3, :name => "Three", :suit => "Diamonds", :image => ""
	  Card.create :value => 4, :name => "Four", :suit => "Diamonds", :image => ""
	  Card.create :value => 5, :name => "Five", :suit => "Diamonds", :image => ""
	  Card.create :value => 6, :name => "Six", :suit => "Diamonds", :image => ""
	  Card.create :value => 7, :name => "Seven", :suit => "Diamonds", :image => ""
	  Card.create :value => 8, :name => "Eight", :suit => "Diamonds", :image => ""
	  Card.create :value => 9, :name => "Nine", :suit => "Diamonds", :image => ""
	  Card.create :value => 10, :name => "Ten", :suit => "Diamonds", :image => ""
	  Card.create :value => 11, :name => "Jack", :suit => "Diamonds", :image => ""
	  Card.create :value => 12, :name => "Queen", :suit => "Diamonds", :image => ""
	  Card.create :value => 13, :name => "King", :suit => "Diamonds", :image => ""
	  Card.create :value => 14, :name => "Ace", :suit => "Diamonds", :image => ""
	  
	  #Spades
	  Card.create :value => 2, :name => "Two", :suit => "Spades", :image => ""
	  Card.create :value => 3, :name => "Three", :suit => "Spades", :image => ""
	  Card.create :value => 4, :name => "Four", :suit => "Spades", :image => ""
	  Card.create :value => 5, :name => "Five", :suit => "Spades", :image => ""
	  Card.create :value => 6, :name => "Six", :suit => "Spades", :image => ""
	  Card.create :value => 7, :name => "Seven", :suit => "Spades", :image => ""
	  Card.create :value => 8, :name => "Eight", :suit => "Spades", :image => ""
	  Card.create :value => 9, :name => "Nine", :suit => "Spades", :image => ""
	  Card.create :value => 10, :name => "Ten", :suit => "Spades", :image => ""
	  Card.create :value => 11, :name => "Jack", :suit => "Spades", :image => ""
	  Card.create :value => 12, :name => "Queen", :suit => "Spades", :image => ""
	  Card.create :value => 13, :name => "King", :suit => "Spades", :image => ""
	  Card.create :value => 14, :name => "Ace", :suit => "Spades", :image => ""
	  
	  #Clubs
	  Card.create :value => 2, :name => "Two", :suit => "Clubs", :image => ""
	  Card.create :value => 3, :name => "Three", :suit => "Clubs", :image => ""
	  Card.create :value => 4, :name => "Four", :suit => "Clubs", :image => ""
	  Card.create :value => 5, :name => "Five", :suit => "Clubs", :image => ""
	  Card.create :value => 6, :name => "Six", :suit => "Clubs", :image => ""
	  Card.create :value => 7, :name => "Seven", :suit => "Clubs", :image => ""
	  Card.create :value => 8, :name => "Eight", :suit => "Clubs", :image => ""
	  Card.create :value => 9, :name => "Nine", :suit => "Clubs", :image => ""
	  Card.create :value => 10, :name => "Ten", :suit => "Clubs", :image => ""
	  Card.create :value => 11, :name => "Jack", :suit => "Clubs", :image => ""
	  Card.create :value => 12, :name => "Queen", :suit => "Clubs", :image => ""
	  Card.create :value => 13, :name => "King", :suit => "Clubs", :image => ""
	  Card.create :value => 14, :name => "Ace", :suit => "Clubs", :image => ""

  end

  def down
  	drop_table :cards
  end
end
