class Question
  attr_accessor :question, :answer, :user_answer

  def initialize
    @question = ''
    @answer = ''
    @user_answer = ''
  end
  
  def new_question
    first = rand(1..9)
    second = rand(1..9)
    operatorRand = rand(1..4)
    operators = {
      '1' => '+',
      '2' => '-',
      '3' => '*',
      '4' => '/'
    }
     
    operator = operators[operatorRand.to_s]

    self.question = "What is #{first} #{operator} #{second}"
    self.answer = eval("#{first} #{operator} #{second}")
  end
  
  def is_correct?
    input = gets.chomp.to_i
    if self.answer == input
      true
    else
      false
    end
  end
end

