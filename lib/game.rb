class Game
  def initialize(moves)
    @moves = moves
  end

  def self.winning_move?(moves_array)
    player1 = []
    player2 = []
    possiblities = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7],
                    [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

    posibilities_map(player1, player2, moves_array, possiblities)

    return true if winniner_check(player1, possiblities) or winniner_check(player2, possiblities)

    false
  end

  def self.continue?(input)
    return true if input.downcase == 'y'

    false
  end

  def self.posibilities_map(player1, player2, moves_array, _possiblities)
    i = 0
    while i < moves_array.length
      if (i + 1).odd?
        player1 << moves_array[i]
      else
        player2 << moves_array[i]
      end
      i += 1
    end
  end

  def self.winniner_check(player, possiblities)
    return unless player.length >= 3

    j = 0
    while j < possiblities.length
      return true if possiblities[j].all? { |num| player.include? num }

      j += 1
    end
  end
end
