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

      if moves_counter.odd?
        puts "#{@players.player_one} is your turn now, choose number between 1 - 9"
        player_one_input = gets.chomp.to_i

        until @players.valid_move?(player_one_input, @moves)
          puts Messages::INVALID_INPUT
          player_one_input = gets.chomp.to_i
        end
        @moves << player_one_input
        puts board.print_board(@moves)

        if (moves_counter > 4) and Game.winning_move?(@moves)
          puts "Congratulations!, #{@players.player_one} you won the game"
          return
        end

      else
        puts "#{@players.player_two} is your turn now, choose number between 1 - 9"
        player_two_input = gets.chomp.to_i

        until @players.valid_move?(player_two_input, @moves)
          puts Messages::INVALID_INPUT
          player_two_input = gets.chomp.to_i
        end
        @moves << player_two_input
        puts board.print_board(@moves)

        if (moves_counter > 4) and Game.winning_move?(@moves)
          puts "Congratulations!, #{@players.player_two} you won the game"
          return
        end
      end
      moves_counter += 1
    end

    puts Messages::GAME_IS_A_DRAW
  end
end

play = TicTacToe.new

play.greet
