class Turn

  attr_reader :player
  attr_accessor :question

  def initialize player
    @player = player
  end

  def print_question
    @question = Question.new player
    puts question.problem
  end

  def correct_answer?
    answer = gets.chomp.to_i
    if answer != question.answer
      puts "#{player.name}: Seriously? No! The correct answer is #{question.answer}."
      return false
    else
      puts "#{player.name}: YES! You are correct."
      return true
    end
  end

  def play
    print_question
    correct_answer?
  end

end