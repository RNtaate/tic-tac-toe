#!/usr/bin/env ruby

class TicTacToe
  def initialize
    @player1 = ''
    @player2 = ''
    # @player_one_played = false
    @moves = []
  end

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

  def print_game_board(num = nil)
    #if num != nil
      #set variable move1 .. move9 depending on num
    #end if
    move1 = '1', move2 = '2', move3 = '3', move4 = '4'
    move5 = '5', move6 = '6', move7 = '7', move8 = '8'
    move9 = '9'


    
    array = [move1, move2, move3, move4, move5, move6, move7, move8, move9]

    puts '---------------------------'
    puts '|        |       |        |'
    puts "    #{array[0]}    |   #{array[1]}   |   #{array[2]}   "
    puts '|        |       |        |'
    puts '  -------+-------+--------'
    puts '|        |       |        |'
    puts "    #{array[3]}    |   #{array[4]}   |   #{array[5]}   "
    puts '|        |       |        |'
    puts '  -------+-------+--------'
    puts '|        |       |        |'
    puts "    #{array[6]}    |   #{array[7]}   |   #{array[8]}   "
    puts '|        |       |        |'
    puts '---------------------------'
  end

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
    print_game_board
    puts "\n\t\t\t*How to play the game?*
    \t\t\t---------------------------
    1. You need to enter the number whose position you desire to play.
    2. Each player has one turn."

    puts 'Do you want to continue? Enter Y if yes otherwise enter any other key'
    input = gets.chomp
    return unless continue?(input)

    players_names

    # interest = true;
    # while interest 
    #   players_turn
    #   input = gets.chomp
    #   interest = continue(input)
    # end
  end

  def players_turn 
    print_game_board

    # initialize move counter to 1

    # while the move counter is less than 9, 

      # Display player's turn and get player_input

      # if player_input is numeric and selection is available

        #increment move counter

        update_board(player_input)
        break if is_winning_move? or is_drawing_move?
      
      # else
        # display invalid input
      #end if

    #end while

    #dislay winner or draw 

    #Display, "Do you want to continue? if yes enter y other wise enter any other key"

  end

  def update_board(player_input)
    print_game_board(player_input)
  end
end

play = TicTacToe.new

play.greet
