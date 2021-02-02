class Player
  attr_reader :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def get_lives
    @lives
  end
end

player_1 = Player.new("Player 1")

puts player_1.name