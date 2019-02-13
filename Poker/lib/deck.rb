require_relative "card"

class Deck 

  SUITS = ['C', 'S', 'H', 'D']
  RANKS = ['A', '2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K']
  VALUES = {'A' => 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9, 'T'=> 10, 'J'=> 10, 'Q'=> 10, 'K'=> 10}

  attr_reader :card_deck
  def initialize
    @card_deck = []  
    SUITS.each do |s| 
        RANKS.each do |r|
            @card_deck << Card.new(s, r)
        end 
    end 
  end

  def shuffle
    card_deck.shuffle
  end

end 

d = Deck.new