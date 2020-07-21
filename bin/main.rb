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
    puts " "
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
end

play = TicTacToe.new

play.greet

play.players_names
