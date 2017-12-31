require 'rspec'
require_relative '../lib/frame'

describe Frame do
  context 'with no throws' do
    it 'shows a score of zero' do
      frame = Frame.new

      expect(frame.score).to eq(0)
    end
  end

  context 'with one throw' do
    it 'shows a score for one throw' do
      frame = Frame.new
      frame.add(5)
      expect(frame.score).to eq(5)
    end
  end
end