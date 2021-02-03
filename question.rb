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
    self.question = "What is #{first} #{operator} #{second}?"
    self.answer = eval("#{first} #{operator} #{second}")
  end
  
  def is_correct?
    input = gets.chomp.to_i
    if self.answer == input
      puts "That's correct!"
    else
      puts "You're so wrong"
    end
  end
end

q = Question.new
q.new_question
puts q.question
puts q.answer
q.is_correct?
