require 'rspec'
require 'tdd_project'

describe Array do 
    describe "#my_uniq" do 
        it "returns unique values" do 
            arr = [1,1,2,1] 
            expect(arr.my_uniq).to eq([1,2])
        end 
    end
    
    describe "#two_sum" do 
        it 'returns positions as pairs [x,y] of elements that sum to zero.' do 
            arr = [-1, 0, 2, -2, 1]
            expect(arr.two_sum).to eq([[0,4],[2,3]])
            expect(arr.two_sum).to_not eq([[4,0],[3,2]])
        end
    end

    describe "#my_transpose" do 
        it "returns matrix transposed" do 
            matrix = [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ]

            expect(matrix.my_transpose).to eq([
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
            ])
        end

    end

    describe "#stock_picker" do    
        it "outputs the most profitable pair of days to buy and sell stock" do  
        # [[0, 2], [1, 2]]
            arr = [25, 26, 27, 24, 23]
            expect(arr.stock_picker).to eq([[0,2],[1,2]])

        end

    end 

    



end 