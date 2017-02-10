class Room

  def initialize(capacity, guests, playlist)
    @capacity = capacity
    @guests = []
    @playlist = []
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

end