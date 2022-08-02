require 'spec_helper'

describe 'Label' do
  before(:all) do
    @book = Book.new('2022-01-01', 'Kelvin Bush', 'good')
    @old_book = Book.new('2004-01-01', 'Charles Darwin', 'good')
    @new_book = Book.new('2018-01-01', 'John Terry', 'bad')
    @label = Label.new('Big Bang Theory', 'Green')
    @label.add_item(@book)
  end

  context 'when new Label is created' do
    it 'should be of Label class instance' do
      expect(@label).to be_instance_of Label
    end
  end
end
