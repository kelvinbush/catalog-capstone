require_relative 'app'
require_relative 'book'
require_relative 'label'
require_relative 'album'
require_relative 'genre'

class Menu
  def initialize
    @app = App.new
  end

  def start
    puts 'Welcome to Kelvin, Simba and Hammed\'s Ruby Capstone! Group'
    inputs
  end

  def add_book
    print 'Enter book publisher:'
    publisher = gets.chomp
    print 'Choose cover state bad(n) or good(y) -> (Y/N):'
    cover_state = gets.chomp.downcase == 'y' ? 'good' : 'bad'
    print 'Enter published date, format -> YYYY-MM-DD:'
    date = gets.chomp
    book = Book.new(date, publisher, cover_state)
    @app.add_book(book)
  end

  def add_label
    print 'Enter the label title:'
    title = gets.chomp
    print 'Enter the label color:'
    color = gets.chomp
    label = Label.new(title, color)
    @app.add_label(label)
  end

  def add_album
    puts 'Add a Music Album: '
    print 'Enter music album name: '
    name = gets.chomp
    print 'Enter published date [YYYY-MM-DD]: '
    date = gets.chomp
    album = MusicAlbum.new(date, name)
    @app.add_album(album)
    puts "Music Album created successfully ✅ 🎉🎉🎉"
  end

  def add_genre
    print 'Enter the Genre name:'
    name = gets.chomp
    genre = Genre.new(name)
    @app.add_genre(genre)
  end

  def inputs
    loop do
      puts ' '
      puts 'Please choose an option by entering a number:'
      puts "#{'1'.green} - List all books"
      puts "#{'2'.green} - List all music albums"
      puts "#{'3'.green} - List all movies"
      puts "#{'4'.green} - List of games"
      puts "#{'5'.green} - List all genres (e.g \'Comedy\', \'Thriller\')"
      puts "#{'6'.green} - List all labels (e.g \'Gift\', \'New\')"
      puts "#{'7'.green} - List all authors (e.g \'Stephen King\')"
      puts "#{'8'.green} - List all sources (e.g \'From a friend\', \'Online shop\')"
      puts "#{'9'.green} - Add a book"
      puts "#{'10'.green} - Add a music album"
      puts "#{'11'.green} - Add a label"
      puts "#{'12'.green} - Add a game"
      puts "#{'13'.red} - Exit"
      execute_inputs
    end
  end

  # rubocop:disable Metrics/CyclomaticComplexity

  def execute_inputs
    input = Integer(gets.chomp)
    case input
    when 1 then @app.list_books
    when 2 then @app.list_albums
    when 3 then puts 'Gallery is empty! Choose (11) to add a movie.'
    when 4 then puts 'Store is empty! Choose (12) to add a game.'
    when 5 then @app.all_genres
    when 6 then @app.list_labels
    when 7 then puts 'Author\'s list is empty!'
    when 8 then puts 'Source\'s list is empty!'
    when 9 then add_book
    when 10 then add_album
    when 11 then add_label
    when 12 then puts 'Please add a game'
    when 13
      @app.save_files
      puts 'Thank you for using this app. Goodbye!'
      exit
    else
      puts 'Kindly enter a number between 1-13'
    end
  end

  # rubocop:enable Metrics/CyclomaticComplexity
end
