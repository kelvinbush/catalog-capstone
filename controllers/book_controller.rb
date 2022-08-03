# frozen_string_literal: true

require 'json'
require 'fileutils'
require_relative '../lib/book'

class BookController
  def initialize
    @books_path = 'files/books.json'
    FileUtils.mkdir_p('files') unless File.directory?('files')
    File.write(@books_path, []) unless File.exist?(@books_path)
  end

  def load_books
    loaded_books = []
    books = JSON.parse(File.read(@books_path))
    books.each do |book|
      loaded_books << Book.new(book['date'], book['publisher'], book['state'])
    end
    loaded_books
  end

  def save_books(books)
    saved_books = []
    books.each do |book|
      saved_books << {
        date: book.publish_date,
        publisher: book.publisher,
        state: book.cover_state
      }
    end
    File.write(@books_path, JSON.generate(saved_books))
  end
end
