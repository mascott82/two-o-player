class Player
  attr_accessor :name, :initial_name, :lives, :scores

  def initialize(name, initial_name, starting_lives)
    @name = name
    @initial_name = initial_name
    @lives = starting_lives
    @scores = 0
  end

  def lost_life
    @lives > 0 ? @lives -= 1 : 0
  end

  def add_score
    @scores += 1
  end
end