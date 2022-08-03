require 'spec_helper'

describe Label do
  before(:all) do
    @book = Book.new('2022-01-01', 'Kelvin Bush', 'good')
    @new_book = Book.new('2018-01-01', 'John Terry', 'bad')
    @label = Label.new('Big Bang Theory', 'Green')
    @label.add_item(@book)
  end

  context 'when new Label is created' do
    it 'should be of Label class instance' do
      expect(@label).to be_instance_of Label
    end

    it 'should have the correct title' do
      expect(@label.title).to eq 'Big Bang Theory'
    end

    it 'should add new items' do
      @label.add_item(@new_book)
      expect(@label.items).to include(@new_book)
    end

    it 'should have the correct number of items' do
      expect(@label.items.length).to eq 2
    end
  end
end
