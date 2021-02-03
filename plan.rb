# Keeps track of each of the player names and their remaining lives. 
class Player
  def initialize(name)
    @name = name
    @lives = 3
  end

  def get_lives
    @lives
  end

  def wrong_answer
    @lives -= 1
  end

  def current_score
    "#{@name} has #{@lives} left"
  end

end

# Used to initialize a new game instance && track the game state and deliver prompts from other classes
class Game
  def fetch_question
  end
end

# keeps track of the questions 
class Turns
  def counter
  end
end


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

    # questions_answer = first + o + second

    self.question = "What is #{first} #{operator} #{second}?"
    self.answer = eval("#{first} #{operator} #{second}")


    # 1 2 3 4
    # case operatorRand
    # when 1 
    #   operator = '+'
    # when 2
    #   operator = '-'
    # when 3
    #   operator = '*'
    # when 4
    #   operator = '/'
    # else
      
    
    # rand2 = generateNumber
    # rand3 = generateNumber
    # operator = randomly get something with rand3
    # question = "What does #{rand1} #{rand3 % 4 == 0 ? '+' : '-'}"
    
    # questions_answer = 8
    # player_answer = 8
    
    # questions_answer == player_answer
  end
  
  def is_correct?(input)
    
  end
end

q = Question.new
q.new_question
puts q.question
puts q.answer

# main.rb

