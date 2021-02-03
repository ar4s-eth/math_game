class Question
  attr_accessor :question, :answer
  # attr_reader :answer
  
  def initialize
    @question = ''
    @answer = ''
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
    
    self.question=("What is #{first} #{operator} #{second}?")

    @question = 'something'

    self.question = "What is #{first} #{operator} #{second}?"
    self.answer = eval("#{first} #{operator} #{second}")

  end
  
  def is_correct?(input)
    self.answer == input
  end
end

q = Question.new
q.new_question
puts q.question
puts q.answer

# inputFromUser = chompthing

# q.is_correct?(inputFromUser)