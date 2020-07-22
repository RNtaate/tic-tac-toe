class Board
  def initialize()
    
  end

  def print_board (moves_array = nil)
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    if !moves_array.nil?
      i = 0
      while i < moves_array.length do
        if array.include? moves_array[i]
          (array.length).times do |j|
            if array[j] == moves_array[i]
              array[j] = (i + 1).odd? ? "X" : "O"
              break
            end
          end
        end
        i += 1
      end
    end

    return "
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