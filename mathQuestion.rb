class MathQuestion
  attr_accessor :num1, :num2

  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    "What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer(answer)
    (@num1 + @num2) == answer.to_i
  end
end