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
    player1 = []
    player2 = []
    possiblities = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

    i = 0
    while i < moves_array.length do
      if (i + 1).odd?
        player1 << moves_array[i]
      else
        player2 << moves_array[i]
      end
      i += 1
    end

    if player1.length >=3
      j = 0
      while j < possiblities.length do 
        if possiblities[j].all?{|num| player1.include? num}
          return true
        end
        j += 1
      end
    end

    if player2.length >=3
      j = 0
      while j < possiblities.length do 
        if possiblities[j].all?{|num| player2.include? num}
          return true
        end
        j += 1
      end
    end


    false
    end

  def drawing_move?
    # if @move.length is equal to 8 && !winning_move?
    # return true
    # end if
    # false
    false
  end

  def self.continue?(input)
    return true if input.downcase == 'y'

    false
  end
end
