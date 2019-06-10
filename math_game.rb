# Classes: MathGame, Player, Turn, Question

# MathGame: Top-level parent
#   => players([Player]), current_turn(i), questions(string)
#   => start_game(), start_turn()

# Player:
#   => player_name(string), player_id(i)
#   => answer_question()

# Turn:
#   => turn_number(i)
#   => print_question(), correct_answer?()

# Question:
#   => random_numbers([i]), question_skeleton(CONST string)
#   =>