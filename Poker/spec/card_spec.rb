require 'rspec'
require 'card'

describe Card do  
    describe "#initialize" do 
        it "creates instance of card with suit" do 
            a = Card.new('C', 'A')
            expect(a.suit).to eq('C')
            expect(a.rank).to eq('A')
        end 
    end

    
end