module GenreController
  def list_genres
    puts 'List of Genres'
    @genres.each do |genre|
      puts "#{genre.id}) - #{genre.name}"
    end
  end
end
