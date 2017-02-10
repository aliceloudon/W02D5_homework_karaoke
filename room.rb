class Room

  def initialize(capacity, guests)
    @capacity = capacity
    @guests = guests
  end

  def show_capacity
    return @capacity
  end

  def number_of_guests
    return @guests.size
  end

end