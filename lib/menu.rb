require_relative 'app'
require_relative 'book'
require_relative 'label'
require_relative 'album'
require_relative 'genre'
require_relative 'game'
require_relative 'author'

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
    puts 'Music Album created successfully ✅ 🎉🎉🎉'
  end

  def add_genre
    print 'Enter the Genre name:'
    name = gets.chomp
    genre = Genre.new(name)
    @app.add_genre(genre)
  end

  def add_game
    print 'Is game multiplayer no(n) or yes(y) -> (Y/N):'
    multiplayer = gets.chomp.downcase == 'y' ? 'yes' : 'no'
    print 'Enter published date, format -> YYYY-MM-DD:'
    publish_date = gets.chomp
    print 'Enter date last played, format -> YYYY-MM-DD:'
    last_played = gets.chomp
    game = Game.new(publish_date, multiplayer, last_played)
    @app.add_game(game)
  end

  def add_author
    print 'Enter the first name:'
    first_name = gets.chomp
    print 'Enter the last name:'
    last_name = gets.chomp
    author = Author.new(first_name, last_name)
    @app.add_author(author)
  end

  def inputs
    loop do
      puts ' '
      puts 'Please choose an option by entering a number:'
      puts '1 - List all books'
      puts '2 - List all music albums'
      puts '3 - Add a genre'
      puts '4 - List of games'
      puts "5 - List all genres (e.g 'Comedy', 'Thriller')"
      puts "6 - List all labels (e.g 'Gift', 'New')"
      puts "7 - List all authors (e.g 'Stephen King')"
      puts '8 - Add a book'
      puts '9 - Add a music album'
      puts '10 - Add a label'
      puts '11 - Add a game'
      puts '12 - Add an author'
      puts '13 - Exit'
      execute_inputs
    end
  end

  # rubocop:disable Metrics

  def execute_inputs
    input = Integer(gets.chomp)
    case input
    when 1 then @app.list_books
    when 2 then @app.list_albums
    when 3 then add_genre
    when 4 then @app.list_games
    when 5 then @app.all_genres
    when 6 then @app.list_labels
    when 7 then @app.list_authors
    when 8 then add_book
    when 9 then add_album
    when 10 then add_label
    when 11 then add_game
    when 12 then add_author
    when 13
      @app.save_files
      puts 'Thank you for using this app. Goodbye!'
      exit
    else
      puts 'Kindly enter a number between 1-13'
    end
  end

  # rubocop:enable Metrics
end
