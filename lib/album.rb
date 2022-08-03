# frozen_string_literal: true

require_relative 'item'

class MusicAlbum < Item
  attr_reader :on_spotify, :name

  def initialize(publish_date, name, on_spotify: false)
    super(publish_date)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
