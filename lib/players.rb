class Players
  attr_accessor :player_one, :player_two
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def valid_move?(move, moves_array)
    return true if move.to_i.positive? and move.to_i < 10 and !moves_array.include? move

    false
  end
end
