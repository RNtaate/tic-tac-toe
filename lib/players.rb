require_relative 'board'
require_relative 'game'

class Players
    def initialize(player_one, player_two)
        @player_one = player_one
        @player_two = player_two
    end

    def valid_move?(move, moves_array)
        return true if move.to_i > 0 and move.to_i < 10 and !moves_array.include? move
            
        false
    end

    def player_won(moves_array)
        game = Game.new(moves_array)
        winner = game.winning_move?(@player_one, @player_two)
        return "Congratulations #{winner} for winning the game" if winner
    end
end