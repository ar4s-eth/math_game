# Used to initialize a new game instance && track the game state and deliver prompts from other classes
class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end
  
  def fetch_question
  end

  def current_player
    
  end

  def over?
    p1.lives == 0 || p2.lives == 0
  end
end