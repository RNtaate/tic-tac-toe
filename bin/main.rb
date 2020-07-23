#!/usr/bin/env ruby
require './lib/board.rb'
require './lib/players.rb'
require './lib/game.rb'
require './lib/messages.rb'

class TicTacToe
  def initialize
    @moves = []
    @players = Players.new('', '')
  end

  private

  def welcome_message
    puts Messages::GAME_INTRODUCTION
    puts Messages::RULES_OF_THE_GAME
    puts "\n\t\t\t*Game Board*
    \t\t\t--------------
    "
  end

  def players_names
    puts Messages::PLAYER_ONE_ENTERS_NAME
    @players.player_one = gets.chomp
    while @players.player_one == ''
      puts Messages::PLAYER_ONE_ENTERS_CORRECT_NAME
      @players.player_one = gets.chomp
    end

    puts Messages::PLAYER_TWO_ENTERS_NAME
    @players.player_two = gets.chomp
    while @players.player_two == ''
      puts Messages::PLAYER_TWO_ENTERS_CORRECT_NAME
      @players.player_two = gets.chomp
    end
  end

  public

  def greet
    welcome_message

    board = Board.new
    puts board.print_board
    puts Messages::HOW_TO_PLAY

    puts Messages::WANT_CONTINUE
    input = gets.chomp
    return unless Game.continue?(input)

    players_names

    puts "#{@players.player_one} will use \"X\"\n#{@players.player_two} will use \"O\""

    interest = true
    while interest
      @moves = []
      players_turn
      puts 'You have finished this round.'
      puts Messages::WANT_CONTINUE
      input = gets.chomp
      interest = Game.continue?(input)
    end
  end

  private

  def players_turn
    board = Board.new
    puts board.print_board(@moves)
    moves_counter = 1

    while moves_counter <= 9
      player_number = moves_counter.odd? ? @players.player_one : @players.player_two
      players_enters(player_number, board, moves_counter)
      return if (moves_counter > 4) and Game.winning_move?(@moves)

      moves_counter += 1
    end

    puts Messages::GAME_IS_A_DRAW
  end

  def players_enters(player_number, board, moves_counter)
    puts "#{player_number} is your turn now, choose number between 1 - 9"
    player_input = gets.chomp.to_i

    until @players.valid_move?(player_input, @moves)
      puts Messages::INVALID_INPUT
      player_input = gets.chomp.to_i
    end
    @moves << player_input
    puts board.print_board(@moves)

    puts "Congratulations!, #{player_number} you won the game" if (moves_counter > 4) and Game.winning_move?(@moves)
  end
end

play = TicTacToe.new

play.greet
