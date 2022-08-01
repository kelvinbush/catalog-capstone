class Item
attr_reader :publish_date, :label, :date, :genre, :author

  def initialize(date)
    @id = Random.rand(1..1000)
    @publish_date = date
    @archived = false
  end

  def can_be_archived?
    @archived
  end

  def move_to_archive
  end

  def add_genre
  end

  def add_author
  end

  def add_label
  end

  private :can_be_archived?

end