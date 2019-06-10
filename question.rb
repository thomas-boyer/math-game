class Question

  attr_reader :problem, :answer, :player

  def initialize player
    num1 = rand(20) + 1
    num2 = rand(20) + 1
    @problem = "\n#{player.name}: What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end

end