class Game
    def initialize(moves)
        @moves = moves
    end

    def self.winning_move?(array)
        # counter = 0
        # while counter is less than @moves.length
        # if winning condition
        # return true
        # end if
        # increment counter
        # end while
        # false
        return true
      end
    
      def drawing_move?
        # if @move.length is equal to 8 && !winning_move?
        # return true
        # end if
        # false
        return false
      end


      def self.continue?(input)
        return true if input.downcase == 'y'

        false
      end
end