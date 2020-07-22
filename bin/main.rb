#!/usr/bin/env ruby
require './lib/board.rb'
require './lib/players.rb'
require './lib/game.rb'

class TicTacToe
  def initialize
    @player1 = ''
    @player2 = ''
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

    puts "#{@player1} will use \"X\"\n#{@player2} will use \"O\""

    puts board.print_board(@moves)

    interest = true
    while interest
      @moves = []
      players_turn
      puts "You have finished this round."
      puts "Do you wish to continue? Enter Y if yes otherwise enter anyother key."
      input = gets.chomp
      interest = Game.continue?(input)
    end
  end

  def players_turn
    board = Board.new
    player = Players.new(@player1, @player2)
    player_one_input = ''
    player_two_input = ''
    moves_counter = 1
    winner = player.player_won(@moves)

    while moves_counter <= 9 do
      puts "moves_counter: #{moves_counter}"
      if moves_counter.odd?
        until player.valid_move?(player_one_input, @moves)
          puts "#{@player1} is your turn now, choose number between 1 - 9"
          player_one_input = gets.chomp.to_i
        end
        @moves << player_one_input
        puts board.print_board(@moves)

      else
        until player.valid_move?(player_two_input, @moves)
          puts "#{@player2} is your turn now, choose number between 1 - 9"
          player_two_input = gets.chomp.to_i
        end
        @moves << player_two_input
        puts board.print_board(@moves)
      end
      moves_counter += 1
    end

  

    puts "Congratulations!" if winner
    

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

  
end

play = TicTacToe.new

play.greet
