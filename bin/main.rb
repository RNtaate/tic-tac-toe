#!/usr/bin/env ruby

class TicTacToe
  def initialize
    @player_1 = ''
    @player_2 = ''
  end

  def greet
    puts 'Hello'
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

play.players_names
