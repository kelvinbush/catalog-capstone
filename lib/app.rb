class App

  def initialize
    @books = []
    @labels = []
  end

  def add_book(book)
    @books << book
  end

  def add_label(label)
    @labels << label
  end

  def list_books
    @books.each { |book| puts "Publisher: #{book.publisher}, condition: #{book.cover_state}, published date: #{book.date}" }
  end

  def list_labels
    @labels.each { |label| puts "Title: #{label.title}, color: #{label.color}" }
  end

end
  