require_relative 'app'
require_relative 'book'

class Menu
  def initialize
    @app = App.new
  end

  def add_book
    print 'Enter book publisher: '
    publisher = gets.chomp
    print 'Choose cover state bad(n) or good(y) -> (Y/N): '
    cover_state = gets.chomp.downcase == 'y' ? 'good' : 'bad'
    print 'Enter published date, format -> YYYY/MM/DD: '
    date = gets.chomp
    book = Book.new(date, publisher, cover_state)
    @app.add_book(book)
  end

  def inputs
    loop do
      puts ' '
      puts 'Please choose an option by entering a number:'
      puts '1 - List all books'
      puts '2 - List all music albums'
      puts '3 - List all movies'
      puts '4 - List of games'
      puts '5 - List all genres (e.g \'Comedy\', \'Thriller\')'
      puts '6 - List all labels (e.g \'Gift\', \'New\')'
      puts '7 - List all authors (e.g \'Stephen King\')'
      puts '8 - List all sources (e.g \'From a friend\', \'Online shop\')'
      puts '9 - Add a book'
      puts '10 - Add a music album'
      puts '11 - Add a movie'
      puts '12 - Add a game'
      puts '13 - Exit'
      execute_inputs
    end
  end

  # rubocop:disable Metrics/CyclomaticComplexity

  def execute_inputs
    input = Integer(gets.chomp)
    case input
    when 1 then puts 'Catalog is empty! Choose (9) to add a book.'
    when 2 then puts 'Album is empty! Choose (10) to add a music album.'
    when 3 then puts 'Gallery is empty! Choose (11) to add a movie.'
    when 4 then puts 'Store is empty! Choose (12) to add a game.'
    when 5 then puts 'Genre\'s list is empty!'
    when 6 then puts 'Labels\'s list is empty!'
    when 7 then puts 'Author\'s list is empty!'
    when 8 then puts 'Source\'s list is empty!'
    when 9 then puts 'Please add a book!'
    when 10 then puts 'Please add a music album!'
    when 11 then puts 'Please add a movie!'
    when 12 then puts 'Please add a game'
    when 13
      puts 'Thank you for using this app. Goodbye'
      exit
    else
      puts 'Kindly enter a number between 1-13'
    end
  end

  # rubocop:enable Metrics/CyclomaticComplexity
end
