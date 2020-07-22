require_relative 'board'

class Players
    def initialize(player_one, player_two)
        @player_one = player_one
        @player_two = player_two
    end

    def valid_move?(move, moves_array)
        return true if move.to_i > 0 and move.to_i < 10 and !moves_array.include? move
            
        false
    end

    def play_check(moves_array)
        
    end
end