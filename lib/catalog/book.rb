class Book < Item
  attr_reader :publisher, :cover_state

  def initialize(date, publisher, cover_state)
    super(date)
    @publisher = publisher
    @cover_state = cover_state
  end

end
