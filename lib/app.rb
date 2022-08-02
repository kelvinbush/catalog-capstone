require_relative '../controllers/book_controller'
require_relative '../controllers/label_controller'

class App

  def initialize
    @book_controller = BookController.new
    @label_controller = LabelController.new
    @books = @book_controller.load_books
    @labels = @label_controller.load_labels
  end

  def add_book(book)
    @books << book
  end

  def add_label(label)
    @labels << label
  end

  def list_books
    if @books.empty?
      puts 'Catalog is empty! Choose (9) to add a book.'
    else
      @books.each { |book| puts "Publisher: #{book.publisher}, condition: #{book.cover_state}, published date: #{book.publish_date}" }
    end
  end

  def list_labels
    if @labels.empty?
      puts 'Catalog is empty! Choose (11) to add a label.'
    else
      @labels.each { |label| puts "Title: #{label.title}, color: #{label.color}" }
    end
  end

  def save_files
    @book_controller.save_books(@books)
    @label_controller.save_labels(@labels)
  end

end
  