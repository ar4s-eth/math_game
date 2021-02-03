# Used to initialize a new game instance && track the game state and deliver prompts from other classes
require './player'

class Game
  attr_accessor :p1
  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
  end
  
  def fetch_question
  end

  def current_player
  end

  def over?
    p1.lives == 0 || p2.lives == 0
  end
end

go = Game.new
puts go.p1.name