#!/usr/bin/env ruby
require './lib/board.rb'

class TicTacToe
  def initialize
    @player1 = ''
    @player2 = ''
    # @player_one_played = false
    @moves = [3, 8]
  end  # def print_game_board(moves_array)
  #   array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def welcome_message
    puts "\t\t\t\t\"TIC TAC TOE GAME\".
    \t\t\t\t\===================
    It is a game played by 2 individuals. The goal is to make an alignment of selections either vertically,
    or horizontally or diagonally."
    puts "\n\t\t\t*Here are the rules of the game.*
    \t\t\t---------------------------------
    rule 1: Player 1 will use \"X\" as pattern and player 2 will use \"O\" as pattern.
    rule 2: A player wins if they make the same pattern vertically, horizontally or diagonally.
    rule 3: If the board is filled with no win, then that will be a draw.
    rule 4: A player is not allowed to make the same selection as their counterpart."
    puts "\n\t\t\t*Game Board*
    \t\t\t--------------
    "
  end

  
  # def print_game_board(moves_array)
  #   array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    # if player_input and player are not nil

    # if array.include? player_input
    #   array.length - 1.times do |i|
    #     if array[i] == player_input
    #       array[i]  = player == @player1 ? "X" : "O"
    #       break
    #     end
    #   end
    # end

    # end if

    # i = 0
    # while i < moves_array.length do
    #   if array.include? moves_array[i]
    #     array.length - 1.times do |j|
    #       if array[j] == moves_array[i]
    #         array[j] = (i + 1).odd? ? "X" : "O"
    #         break
    #       end
    #     end
    #   end
    # end


  #   puts '---------------------------'
  #   puts '|        |       |        |'
  #   puts "    #{array[0]}    |   #{array[1]}   |   #{array[2]}   "
  #   puts '|        |       |        |'
  #   puts '  -------+-------+--------'
  #   puts '|        |       |        |'
  #   puts "    #{array[3]}    |   #{array[4]}   |   #{array[5]}   "
  #   puts '|        |       |        |'
  #   puts '  -------+-------+--------'
  #   puts '|        |       |        |'
  #   puts "    #{array[6]}    |   #{array[7]}   |   #{array[8]}   "
  #   puts '|        |       |        |'
  #   puts '---------------------------'
  # end

  def continue?(input)
    return true if input.downcase == 'y'

    false
  end

  def players_names
    puts 'Player 1: Enter your name: '
    @player1 = gets.chomp
    while @player1 == ''
      puts 'Player 1, you did not enter a valid name, please enter your name: '
      @player1 = gets.chomp
    end

    puts 'Player 2: Enter your name: '
    @player2 = gets.chomp
    while @player2 == ''
      puts 'Player 2, you did not enter a valid name, please enter your name: '
      @player2 = gets.chomp
    end
  end

  def greet
    welcome_message
    # print_game_board
    board = Board.new
    board.print_board
    puts "\n\t\t\t*How to play the game?*
    \t\t\t---------------------------
    1. You need to enter the number whose position you desire to play.
    2. Each player has one turn."

    puts 'Do you want to continue? Enter Y if yes otherwise enter any other key'
    input = gets.chomp
    return unless continue?(input)

    players_names

    puts "#{@player1} will use \"X\"\n#{@player2} will use \"O\""

    board.print_board(@moves)

    # interest = true
    # while interest
    #   players_turn
    #   input = gets.chomp
    #   interest = continue?(input)
    # end
  end

  def players_turn
    # print_game_board

    # Mocking the game flow
    # puts "#{@player1} is your turn now, choose number between 1 - 9"
    # player_one_input = gets.chomp
    # puts "#{@player1} now, your move is displayed on the board on position #{player_one_input}"
    # puts "#{@player2} is your turn now, choose number between 1 - 9"
    # player_two_input = gets.chomp
    # puts "#{@player2} now, your move is displayed on the board on position #{player_two_input}"

    # Logic of the actual game
    #
    #
    #     initialize move counter to 1
    #
    #      while the move counter is less than 9,
    #
    #        Display player's turn and get player_input
    #
    #        if player_input is numeric and selection is available
    #
    #         increment move counter
    #
    #         update @moves array
    #         print_game_board(player_input, player)
    #          break if winning_move? or drawing_move?
    #
    #        else
    #          display invalid input
    #       end if
    #
    #     end while
    #
    #     dislay winner or draw
    #
    #     Display, "Do you want to continue? if yes enter y other wise enter any other key"
  end

  def winning_move?
    # counter = 0
    # while counter is less than @moves.length
    # if winning condition
    # return true
    # end if
    # increment counter
    # end while
    # false
  end

  def drawing_move?
    # if @move.length is equal to 8 && !winning_move?
    # return true
    # end if
    # false
  end
end

play = TicTacToe.new

play.greet
