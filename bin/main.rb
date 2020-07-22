#!/usr/bin/env ruby
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Layout/LineLength
require './lib/board.rb'
require './lib/players.rb'
require './lib/game.rb'

class TicTacToe
  def initialize
    @moves = []
    @players = Players.new('', '')
  end

  private

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

  def players_names
    puts 'Player 1: Enter your name: '
    @players.player_one = gets.chomp
    while @players.player_one == ''
      puts 'Player 1, you did not enter a valid name, please enter your name: '
      @players.player_one = gets.chomp
    end

    puts 'Player 2: Enter your name: '
    @players.player_two = gets.chomp
    while @players.player_two == ''
      puts 'Player 2, you did not enter a valid name, please enter your name: '
      @players.player_two = gets.chomp
    end
  end

  public

  def greet
    welcome_message

    board = Board.new
    puts board.print_board
    puts "\n\t\t\t*How to play the game?*
    \t\t\t---------------------------
    1. You need to enter the number whose position you desire to play.
    2. Each player has one turn."

    puts 'Do you want to continue? Enter Y if yes otherwise enter any other key'
    input = gets.chomp
    return unless Game.continue?(input)

    players_names

    puts "#{@players.player_one} will use \"X\"\n#{@players.player_two} will use \"O\""

    interest = true
    while interest
      @moves = []
      players_turn
      puts 'You have finished this round.'
      puts 'Do you wish to continue? Enter Y if yes otherwise enter anyother key.'
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
          puts "\nINVALID INPUT!!, Either Input has already been played or it is not a number.\nEnter a valid number which is between 1 - 9"
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
          puts "\nINVALID INPUT!!, Either Input has already been played or it is not a number.\nEnter a valid number which is between 1 - 9"
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

    puts 'This game is a Draw'
  end
end

play = TicTacToe.new

play.greet

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Layout/LineLength
