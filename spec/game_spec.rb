require 'rspec'
require_relative '../lib/game'

describe Game do

  context 'with one throw' do
    it 'should have a score for one throw' do
      game = Game.new

      game.add(5)

      expect(game.score).to eq(5)
    end
  end

  context 'with two throws and no mark' do
    it 'should have a score for two throws' do
      game = Game.new

      game.add(5)
      game.add(4)

      expect(game.score).to eq(9)
    end
  end

  context 'with four throws and no mark' do
    it 'should have a score for two throws' do
      game = Game.new

      game.add(5)
      game.add(4)
      game.add(7)
      game.add(2)

      expect(game.score).to eq(18)
      expect(game.score_for_frame(1)).to eq(9)
      expect(game.score_for_frame(2)).to eq(18)
    end

  end
end