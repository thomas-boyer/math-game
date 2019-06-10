# Classes: MathGame, Player, Turn, Question

# MathGame: Top-level parent
#   => players([Player]), current_turn(i)
#   => play

# Player:
#   => player_name(string), lives(i)
#   => answer_question()

# Turn:
#   => turn_number(i)
#   => play(), print_question(), correct_answer?()

# Question:
#   => random_numbers([i]), question_skeleton(CONST string)
#   =>

require('./player')
require('./turn')
require('./question')

class MathGame

  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end

  attr_accessor :player1, :player2

  def play_turn player
    turn = Turn.new player
    correct_answer = turn.play
    if (!correct_answer)
      player.lives -= 1
    end
    puts "\n----- NEW TURN -----"
  end

  def play
    puts "Player 1: Please type your username."
    player1.name = gets.chomp
    puts "\nPlayer 2: Please type your username."
    player2.name = gets.chomp

    while (player1.lives > 0 && player2.lives > 0)
      play_turn(player1)
      puts "\n#{player1.name}: #{player1.lives} vs #{player2.name}: #{player2.lives}"
      play_turn(player2)
      puts "\n #{player1.name}: #{player1.lives} vs #{player2.name}: #{player2.lives}"
    end

    if (player1.lives > player2.lives)
      puts "\n#{player1.name} wins with a score of #{player1.lives}/3"
    else
      puts "\n#{player1.name} wins with a score of #{player1.lives}/3"
    end

    puts "\n----- GAME OVER -----"
    puts "Good bye!"

  end
end

game = MathGame.new
game.play