class Room


  def initialize(capacity, guests)
    @capacity = capacity
    @guests = []
  end

  def show_capacity
    return @capacity
  end

  def number_of_guests
    return @guests.size
  end

  def add_guest(person)
    @guests.push(person)
  end

end