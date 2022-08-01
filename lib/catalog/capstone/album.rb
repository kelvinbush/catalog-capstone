require './item'

class MusicAlbum < Item
  def initialize(publish_date, archived: false, on_spotify: false)
    super(publish_date, archived)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    false
  end
end