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
    if @books.empty?
      puts 'Catalog is empty! Choose (9) to add a book.'
    else
      @books.each { |book| puts "Publisher: #{book.publisher}, condition: #{book.cover_state}, published date: #{book.date}" }
    end
  end

  def list_labels
    if @labels.empty?
      puts 'Catalog is empty! Choose (11) to add a label.'
    else
      @labels.each { |label| puts "Title: #{label.title}, color: #{label.color}" }
    end
  end

end
  