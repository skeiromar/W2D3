class Card 
    attr_reader :suit, :rank 

    def initialize(suit, rank)
        @suit = suit 
        @rank = rank 
    end 

    def inspect 
        "{#{rank} : #{suit}}"
    end


end 