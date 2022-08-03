# frozen_string_literal: true

require 'spec_helper'

describe Author do
  before(:all) do
    @author = Author.new('Charles', 'Darwin')
    @game = Game.new('2010-10-10', 'no', '2018-10-01')
  end

  context 'when condition Author is created' do
    it 'should be an instance of author class' do
      expect(@author).to be_instance_of Author
    end

    it 'should have the correct name' do
      expect(@author.first_name).to eq 'Charles'
    end
    it 'should add an item' do
      @author.add_item(@game)
      expect(@author.items).to include @game
    end
  end
end
