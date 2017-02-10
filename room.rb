class Room

  def initialize(capacity, guests, playlist, entry_fee)
    @capacity = capacity
    @guests = []
    @playlist = []
    @entry_fee = entry_fee
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

  def remove_guest(person)
    @guests.delete(person)  
  end

  def number_of_songs
    return @playlist.size
  end

  def add_song_to_playlist(song)
    @playlist.push(song)
  end

  def remove_song_from_playlist(song)
    @playlist.delete(song)
  end

  def capacity_vs_guests
    if @capacity <= @guests.size
      return "Room full"
    else
      return "Spaces available"
    end
  end

  def show_entry_fee
    return @entry_fee
  end

end