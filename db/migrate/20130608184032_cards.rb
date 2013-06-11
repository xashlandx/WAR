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
	  Card.create :value => 2, :name => "Two", :suit => "Hearts", :image => "51.png"	  
	  Card.create :value => 3, :name => "Three", :suit => "Hearts", :image => "47.png"
	  Card.create :value => 4, :name => "Four", :suit => "Hearts", :image => "43.png"
	  Card.create :value => 5, :name => "Five", :suit => "Hearts", :image => "39.png"
	  Card.create :value => 6, :name => "Six", :suit => "Hearts", :image => "35.png"
	  Card.create :value => 7, :name => "Seven", :suit => "Hearts", :image => "31.png"
	  Card.create :value => 8, :name => "Eight", :suit => "Hearts", :image => "27.png"
	  Card.create :value => 9, :name => "Nine", :suit => "Hearts", :image => "23.png"
	  Card.create :value => 10, :name => "Ten", :suit => "Hearts", :image => "19.png"
	  Card.create :value => 11, :name => "Jack", :suit => "Hearts", :image => "15.png"
	  Card.create :value => 12, :name => "Queen", :suit => "Hearts", :image => "11.png"
	  Card.create :value => 13, :name => "King", :suit => "Hearts", :image => "7.png"
	  Card.create :value => 14, :name => "Ace", :suit => "Hearts", :image => "3.png"
	  
	  #Diamonds
	  Card.create :value => 2, :name => "Two", :suit => "Diamonds", :image => "52.png"
	  Card.create :value => 3, :name => "Three", :suit => "Diamonds", :image => "48.png"
	  Card.create :value => 4, :name => "Four", :suit => "Diamonds", :image => "44.png"
	  Card.create :value => 5, :name => "Five", :suit => "Diamonds", :image => "40.png"
	  Card.create :value => 6, :name => "Six", :suit => "Diamonds", :image => "36.png"
	  Card.create :value => 7, :name => "Seven", :suit => "Diamonds", :image => "32.png"
	  Card.create :value => 8, :name => "Eight", :suit => "Diamonds", :image => "28.png"
	  Card.create :value => 9, :name => "Nine", :suit => "Diamonds", :image => "24.png"
	  Card.create :value => 10, :name => "Ten", :suit => "Diamonds", :image => "20.png"
	  Card.create :value => 11, :name => "Jack", :suit => "Diamonds", :image => "16.png"
	  Card.create :value => 12, :name => "Queen", :suit => "Diamonds", :image => "12.png"
	  Card.create :value => 13, :name => "King", :suit => "Diamonds", :image => "8.png"
	  Card.create :value => 14, :name => "Ace", :suit => "Diamonds", :image => "4.png"
	  
	  #Spades
	  Card.create :value => 2, :name => "Two", :suit => "Spades", :image => "50.png"
	  Card.create :value => 3, :name => "Three", :suit => "Spades", :image => "46.png"
	  Card.create :value => 4, :name => "Four", :suit => "Spades", :image => "42.png"
	  Card.create :value => 5, :name => "Five", :suit => "Spades", :image => "38.png"
	  Card.create :value => 6, :name => "Six", :suit => "Spades", :image => "34.png"
	  Card.create :value => 7, :name => "Seven", :suit => "Spades", :image => "30.png"
	  Card.create :value => 8, :name => "Eight", :suit => "Spades", :image => "26.png"
	  Card.create :value => 9, :name => "Nine", :suit => "Spades", :image => "22.png"
	  Card.create :value => 10, :name => "Ten", :suit => "Spades", :image => "18.png"
	  Card.create :value => 11, :name => "Jack", :suit => "Spades", :image => "14.png"
	  Card.create :value => 12, :name => "Queen", :suit => "Spades", :image => "10.png"
	  Card.create :value => 13, :name => "King", :suit => "Spades", :image => "6.png"
	  Card.create :value => 14, :name => "Ace", :suit => "Spades", :image => "2.png"
	  
	  #Clubs
	  Card.create :value => 2, :name => "Two", :suit => "Clubs", :image => "49.png"
	  Card.create :value => 3, :name => "Three", :suit => "Clubs", :image => "45.png"
	  Card.create :value => 4, :name => "Four", :suit => "Clubs", :image => "41.png"
	  Card.create :value => 5, :name => "Five", :suit => "Clubs", :image => "37.png"
	  Card.create :value => 6, :name => "Six", :suit => "Clubs", :image => "33.png"
	  Card.create :value => 7, :name => "Seven", :suit => "Clubs", :image => "29.png"
	  Card.create :value => 8, :name => "Eight", :suit => "Clubs", :image => "25.png"
	  Card.create :value => 9, :name => "Nine", :suit => "Clubs", :image => "21.png"
	  Card.create :value => 10, :name => "Ten", :suit => "Clubs", :image => "17.png"
	  Card.create :value => 11, :name => "Jack", :suit => "Clubs", :image => "13.png"
	  Card.create :value => 12, :name => "Queen", :suit => "Clubs", :image => "9.png"
	  Card.create :value => 13, :name => "King", :suit => "Clubs", :image => "5.png"
	  Card.create :value => 14, :name => "Ace", :suit => "Clubs", :image => "1.png"

  end

  def down
  	drop_table :cards
  end
end
