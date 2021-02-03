class Player
  attr_accessor :name, :lives

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
