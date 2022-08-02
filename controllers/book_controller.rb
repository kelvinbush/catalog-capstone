require 'json'
require 'fileutils'
require_relative '../lib/book'

class BookController
  def initialize
    @labels_path = 'files/books.json'
    FileUtils.mkdir_p('files') unless File.directory?('files')
    File.write(@labels_path, []) unless File.exist?(@labels_path)
  end

  def load_books
    loaded_books = []
    books = JSON.parse(File.read(@labels_path))
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
    File.write(@labels_path, JSON.generate(saved_books))
  end
end
