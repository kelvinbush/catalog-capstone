require_relative '../controllers/book_controller'
require_relative '../controllers/label_controller'
require_relative '../controllers/album_controller'
require_relative '../controllers/genre_controller'

class App
  def initialize
    @book_controller = BookController.new
    @label_controller = LabelController.new
    @album_controller = AlbumController.new
    @genre_controller = GenreController.new
    @books = @book_controller.load_books
    @labels = @label_controller.load_labels
    @albums = @album_controller.fetch_albums
    @genres = @genre_controller.load_genres
  end

  def add_book(book)
    @books << book
  end

  def add_label(label)
    @labels << label
  end

  def add_album(album)
    @albums << album
  end

  def add_genre(genre)
    @genres << genre
  end

  def list_books
    if @books.empty?
      puts 'Catalog is empty! Choose (9) to add a book.'
    else
      @books.each do |book|
        puts "Publisher: #{book.publisher}, condition: #{book.cover_state}, published date: #{book.publish_date}"
      end
    end
  end

  def list_labels
    if @labels.empty?
      puts 'Catalog is empty! Choose (11) to add a label.'
    else
      @labels.each { |label| puts "Title: #{label.title}, color: #{label.color}" }
    end
  end

  def list_albums
    puts 'Music Albums: '
    puts '----------***----------'
    puts 'Album is empty! Choose (10) to add a music album.' if @albums.empty?
    @albums.each_with_index do |album, index|
      puts "#{index}) Published Date: #{album.publish_date}"
    end
  end

  def all_genres
    puts 'Genres: '
    puts '----------***----------'
    puts 'Genre\'s list is empty! Choose (10) to add a music album.' if @genres.empty?
    @genres.each_with_index do |genre, index|
      puts "#{index}) Name: #{genre.name}"
    end
  end

  def save_files
    @book_controller.save_books(@books)
    @label_controller.save_labels(@labels)
    @album_controller.save_albums(@albums)
    @genre_controller.save_genres(@genres)
  end
end
