#!/usr/bin/env ruby

class TicTacToe
  def initialize
    @player_1 = ''
    @player_2 = ''
  end

  def greet
    puts "\t\t\t\t\"TIC TAC TOE GAME\".
    \t\t\t\t\===================
    It is a game played by 2 individuals. The goal is to make an alignment of selections either vertically, or horizontally or diagonally."
    puts "\n\t\t\t*Here are the rules of the game.*
    \t\t\t---------------------------------
    rule 1: Player 1 will use \"X\" as pattern and player 2 will use \"O\" as pattern.
    rule 2: A player wins if they make the same pattern vertically, horizontally or diagonally.
    rule 3: If the board is filled with no win, then that will be a draw.
    rule 4: A player is not allowed to make the same selection as their counterpart."
    puts "\n\t\t\t*Game Board*
    \t\t\t--------------
    "

    print_game_board

    puts "\n\t\t\t*How to play the game?*
    \t\t\t---------------------------
    1. You need to enter the number whose position you desire to play.
    2. Each player has one turn."

    puts "Do you want to continue? Enter Y if yes otherwise enter any other key"
    input = gets.chomp
    if continue?(input)
      players_names
    else
      return
    end
  end

  def players_names
    puts 'Player 1: Enter your name: '
    @player_1 = gets.chomp
    while @player_1 == '' do
      puts 'Player 1, you did not enter a valid name, please enter your name: '
      @player_1 = gets.chomp
    end

    puts 'Player 2: Enter your name: '
    @player_2 = gets.chomp
    while @player_2 == '' do
      puts 'Player 2, you did not enter a valid name, please enter your name: '
      @player_2 = gets.chomp
    end
  end

  def print_game_board
    move_1 = "1"
    move_2 = "2"
    move_3 = "3"
    move_4 = "4"
    move_5 = "5"
    move_6 = "6"
    move_7 = "7"
    move_8 = "8"
    move_9 = "9"
    array = [move_1, move_2, move_3, move_4, move_5, move_6, move_7, move_8, move_9]

    puts "---------------------------"
    puts "|        |       |        |"
    puts "    #{array[0]}    |   #{array[1]}   |   #{array[2]}   "
    puts "|        |       |        |"
    puts "  -------+-------+--------"
    puts "|        |       |        |"
    puts "    #{array[3]}    |   #{array[4]}   |   #{array[5]}   "
    puts "|        |       |        |"
    puts "  -------+-------+--------"
    puts "|        |       |        |"
    puts "    #{array[6]}    |   #{array[7]}   |   #{array[8]}   "
    puts "|        |       |        |"
    puts "---------------------------"
  end

  def continue?(input)
    if input.downcase == 'y'
      return true
    end
    return false
  end
end

play = TicTacToe.new

play.greet
