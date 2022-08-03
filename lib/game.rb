# frozen_string_literal: true

require_relative 'item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(date, multiplayer, last_played_at)
    super(date)
    @multiplayer = multiplayer
    @last_played_at = Date.strptime(last_played_at, '%Y-%m-%d')
  end

  def can_be_archived?
    date_today = Time.now
    super && @last_played_at.year < date_today.year - 2
  end
end
