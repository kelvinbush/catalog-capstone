require 'json'
require 'fileutils'
require_relative '../lib/label'

class GenreController
  def initialize
    @genre_path = 'files/genre.json'
    File.write(@genre_path, []) unless File.exist?(@genre_path)
  end

  def load_genres
    loaded_genres = []
    genres = JSON.parse(File.read(@genre_path))
    genres.each do |genre|
      loaded_genres << Genre.new(genre['name'])
    end
    loaded_genres
  end

  def save_genres(genres)
    saved_genres = []
    genres.each do |genre|
      saved_genres << {
        name: genre.name,
      }
    end
    File.write(@genre_path, JSON.generate(saved_genres))
  end
end
