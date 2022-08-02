require 'json'
require './lib/album.rb'

module AlbumController
  def fetch_albums
    store = []
    file = open('./files/album.json')
    if File.exist?(file) && File.read(file) != ''
      album_data = file.read
      JSON.parse(album_data).each do |album|
        store << MusicAlbum.new(album['date'], album['name'])
      end
    else
        File.write(file, '[]')
    end
    store
  end

  def save_albums
    store = []
    @albums.each do |album|
      store << { date: album.publish_date, name: album.name }
    end
    File.write('./files/album.json', store.to_json)
  end
end