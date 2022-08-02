require 'spec_helper'

describe Book do
  before(:all) do
    @book = Book.new('2022-01-01', 'Kelvin Bush', 'good')
    @old_book = Book.new('2004-01-01', 'Charles Darwin', 'good')
    @new_book = Book.new('2018-01-01', 'John Terry', 'bad')
  end

  context 'when condition a new Book is created' do
    it 'should be an instance of book class' do
      expect(@new_book).to be_instance_of Book
    end
  end
end
