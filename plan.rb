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
class Questions
end

class Turns
  def counter
  end
end

