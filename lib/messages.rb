module Messages
  GAME_INTRODUCTION = "\t\t\t\t\"TIC TAC TOE GAME\".
    \t\t\t\t\===================
    It is a game played by 2 individuals. The goal is to make an alignment of selections either vertically,
    or horizontally or diagonally.".freeze

  RULES_OF_THE_GAME = "\n\t\t\t*Here are the rules of the game.*
    \t\t\t---------------------------------
    rule 1: Player 1 will use \"X\" as pattern and player 2 will use \"O\" as pattern.
    rule 2: A player wins if they make the same pattern vertically, horizontally or diagonally.
    rule 3: If the board is filled with no win, then that will be a draw.
    rule 4: A player is not allowed to make the same selection as their counterpart.".freeze

  PLAYER_ONE_ENTERS_NAME = 'Player 1: Enter your name: '.freeze
  PLAYER_ONE_ENTERS_CORRECT_NAME = 'Player 1, you did not enter a valid name, please enter your name: '.freeze

  PLAYER_TWO_ENTERS_NAME = 'Player 2: Enter your name: '.freeze
  PLAYER_TWO_ENTERS_CORRECT_NAME = 'Player 2, you did not enter a valid name, please enter your name: '.freeze

  HOW_TO_PLAY = "\n\t\t\t*How to play the game?*
    \t\t\t---------------------------
    1. You need to enter the number whose position you desire to play.
    2. Each player has one turn.".freeze

  WANT_CONTINUE = 'Do you want to continue? Enter Y or Yes if yes otherwise enter any other key'.freeze

  INVALID_INPUT = "\nINVALID INPUT!!, Either Input has already been played or it is not a number.
Enter a valid number which is between 1 - 9".freeze

  GAME_IS_A_DRAW = 'This game is a Draw'.freeze
end
