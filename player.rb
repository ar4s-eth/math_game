class Player
  attr_reader :name
  attr_writer :lives

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

end

player_1 = Player.new("Player 1")

# player_1.wrong_answer
# puts player_1.get_lives
# puts player_1.name