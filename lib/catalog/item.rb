class Item
  attr_reader :publish_date, :label, :date, :genre, :author

  def initialize(date)
    @id = Random.rand(1..1000)
    @publish_date = Date.strptime(date, '%Y-%m-%d')
    @archived = false
  end

  def move_to_archive
    can_be_archived? ? @archived = true : nil
  end

  def add_genre
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_author
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def add_label
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  private

  def can_be_archived?
    year = Time.new.year
    year - @publish_date.year > 10
  end
end