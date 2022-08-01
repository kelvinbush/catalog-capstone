require './item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(publish_date, archived: false, on_spotify: false)
    super(publish_date, archived)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    false
  end
end