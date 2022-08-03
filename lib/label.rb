# frozen_string_literal: true

require_relative 'item'

class Label
  attr_reader :title, :color, :items

  def initialize(title, color)
    @id = Random.rand(1..1000)
    @items = []
    @title = title
    @color = color
  end

  def add_item(item)
    @items << item
    item.add_label(self)
  end
end
