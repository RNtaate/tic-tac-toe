class Board
  def initialize; end

  def print_board(moves_array = nil)
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    unless moves_array.nil?
      i = 0
      while i < moves_array.length
        update_board(array, moves_array[i], i) if array.include? moves_array[i]
        i += 1
      end
    end
    borad_ui(array)
  end

  private

  def update_board(array, move_value, curr_index)
    array.length.times do |j|
      if array[j] == move_value
        array[j] = (curr_index + 1).odd? ? 'X' : 'O'
        break
      end
    end
  end

  def borad_ui(array)
    "
     ---------------------------
     |        |       |        |
         #{array[0]}    |   #{array[1]}   |   #{array[2]}
     |        |       |        |
       -------+-------+--------
     |        |       |        |
         #{array[3]}    |   #{array[4]}   |   #{array[5]}
     |        |       |        |
       -------+-------+--------
     |        |       |        |
         #{array[6]}    |   #{array[7]}   |   #{array[8]}
     |        |       |        |
     ---------------------------\n"
  end
end
