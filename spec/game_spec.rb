require 'spec_helper'

describe Game do
  before(:all) do
    @game = Game.new('2010-10-10', 'no', '2018-10-01')
  end

  context 'when condition new Game is created' do
    it 'should be of Game instance' do
      expect(@game).to be_instance_of Game
    end

    it 'should be archived when older than 10 years and last_played > 2 years' do
      expect(@game.can_be_archived?).to be_truthy
    end
  end
end