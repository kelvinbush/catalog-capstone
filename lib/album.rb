require_relative 'item'

class MusicAlbum < Item
  attr_reader :on_spotify, :name

  def initialize(publish_date, name, archived: false, on_spotify: false)
    super(publish_date)
    @name = name
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    super && @on_spotify == true
  end
end
