require 'spec_helper'

describe Book do
  before(:all) do
    @book = Book.new('2022-01-01', 'Kelvin Bush', 'good')
    @old_book = Book.new('2004-01-01', 'Charles Darwin', 'good')
    @new_book = Book.new('2018-01-01', 'John Terry', 'bad')
  end

  context 'when a new Book is created' do
    it 'should be an instance of book class' do
      expect(@new_book).to be_instance_of Book
    end

    it 'should have the correct publisher' do
      expect(@book.publisher).to eq 'Kelvin Bush'
    end

    it 'should archive when older than 10 years' do
      expect(@old_book.can_be_archived?).to be_truthy
    end

    it 'should archive when cover_state is bad' do
      expect(@new_book.can_be_archived?).to be_truthy
    end
  end
end
