
class Towers 
    attr_accessor :pile, :game_status

    def initialize
        @pile = [[3,2,1],[],[]]
        @game_status = false
        start_game
    end

    def start_game
        game_status = true 

        while game_status 
            puts "enter start and end pile:"
            user_input = gets.chomp
            from_to = user_input.split(',').map {|i| i.to_i - 1}
            move(from_to)
        end
    end

    def move(from_to)
        from, to = from_to 
        if valid_move?(from_to)
            pile[to].push(pile[from].pop)
        end 

        won? 
    end

    def valid_move?(from_to)
        from, to = from_to
        if from.between?(0, 2) && to.between?(0,2)
            if !pile[from].empty? && pile[to].empty? 
                return true 
            elsif !pile[from].empty?
                return pile[to].last > pile[from].last  
            end 
        end

        false 
    end 

    def won? 
        if pile.last.size == 3
            game_status = false 
            puts "you won"
        end  
    end


end

a = Towers.new 

