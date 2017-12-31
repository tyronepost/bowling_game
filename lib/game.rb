class Game
  attr_accessor :score, :throws, :current_throw

  def initialize
    @score = 0
    @throws = []
    @current_throw = 0
  end

  def add(pins)
    throws[current_throw] = pins
    @current_throw = current_throw + 1
    @score = score + pins
  end

  def score_for_frame(frame)
    ball = 0
    local_score = 0
    current_frame = 0
    while current_frame < frame
      first_throw = throws[ball]
      ball += 1
      second_throw = throws[ball]
      ball += 1
      current_frame_score = first_throw + second_throw
      local_score += current_frame_score

      current_frame += 1
    end
    local_score
  end
end
