class Item
  attr_reader :publish_date, :label, :date, :genre, :author

  def initialize(date)
    @id = Random.rand(1..1000)
    @publish_date = date
    @archived = false
  end

  def can_be_archived?
    year = Time.new.year
    year - @publish_date.year > 10
  end

  def move_to_archive
  end

  def add_genre
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_author
  end

  def add_label
  end

  private :can_be_archived?

end