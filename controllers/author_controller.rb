require 'json'
require 'fileutils'
require_relative '../lib/author'

class AuthorController
  def initialize
    @authors_path = 'files/authors.json'
    File.write(@authors_path, []) unless File.exist?(@authors_path)
  end

  def load_authors
    loaded_authors = []
    authors = JSON.parse(File.read(@authors_path))
    authors.each do |author|
      loaded_authors << Author.new(author['first_name'], author['last_name'])
    end
    loaded_authors
  end

  def save_authors(authors)
    saved_authors = []
    authors.each do |author|
      saved_authors << {
        first_name: author.first_name,
        last_name: author.last_name
      }
    end
    File.write(@authors_path, JSON.generate(saved_authors))
  end
end
