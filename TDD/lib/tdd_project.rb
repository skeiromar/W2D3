class Array 
    def my_uniq
        counter = {}

        self.each do |ele|
            counter[ele] = true 
        end 

        counter.keys 
    end 
    def two_sum
        indices = []

        each_with_index do |v, i|
            each_with_index do |v1, i1|
                if i1 > i && v + v1 == 0 
                    indices << [i, i1]
                end
            end
        end
        indices
    end

    def my_transpose
        copy = Marshal.load(Marshal.dump(self))

        (0...copy.length).each do |i|
            (0...copy.length).each do |j|
                copy[i][j] = self[j][i]
            end
        end 
        copy
    end

    def stock_picker 
        stock_pairs = {}
        stock_value = 0 


        (length - 1).times do |i| 
            # 
            (i...length).each do |j|
                # day in hash? 0 -> 1,2,3, 4 5 6 
                if stock_pairs.has_key?(i)
                    if stock_value < self[j]
                        stock_pairs[i] = j
                        stock_value = self[j]
                    end 
                else
                    # 0 : 0, 0th day 
                    stock_pairs[i] = i
                    stock_value = self[i]
                end 
            end 
            stock_value = 0 
        end 

        stock_pairs.map {|k, v| [k, v]}.reject {|el| el[0] == el[1]}
    end 
end 

# arr = [25, 26, 27, 24, 23]
# p arr.stock_picker