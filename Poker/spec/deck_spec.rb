require 'rspec'
require 'deck'

describe Deck do
    describe "#initialize" do
        it "initializes a deck of 52 cards" do
            deck = Deck.new
            expect(deck.card_deck.size).to eq(52)         
        end
    end

    describe "#shuffle" do 
        it "shuffles the deck" do
            deck = Deck.new
            expect(deck.shuffle).to_not eq(deck.card_deck)
        end
    end
end
