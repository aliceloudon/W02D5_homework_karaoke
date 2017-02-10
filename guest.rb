class Guest

  attr_accessor :name, :money

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def money
    return @money
  end

end