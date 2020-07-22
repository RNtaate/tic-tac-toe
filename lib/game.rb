class Game
    def initialize(moves)
        @moves = moves
    end

    def self.winning_move?(moves_array)
        # counter = 0
        # while counter is less than @moves.length
        # if winning condition
        # return true
        # end if
        # increment counter
        # end while
        # false
        possiblities = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
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