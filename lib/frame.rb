class Frame
  attr_accessor :score

  def initialize
    @score = 0
  end

  def add(pins)
    @score = score + pins
  end
end