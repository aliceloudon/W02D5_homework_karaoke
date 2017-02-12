require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup

    @room1 = Room.new("funk and soul", 4, [], [], 10)

    @guest1 = Guest.new("Suzanne", 50, "Something Inside So Strong")
    @guest2 = Guest.new("David", 5, "Shut up and Dance")
    @guest3 = Guest.new("Rob", 150, "Steal the Light")
    @guest4 = Guest.new("Adam", 150, "Money Money Money")
    @guest5 = Guest.new("Chris", 150, "You are the one and only")

    @song1 = Song.new("Crave You", 4)
    @song2 = Song.new("Steal the Light", 3)
    @song3 = Song.new("Stay the Same", 5)

  end

  def test_show_capacity
    assert_equal(4, @room1.show_capacity)
  end

  def test_number_of_guests
    assert_equal(0, @room1.number_of_guests)
  end

  def test_add_guest
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.number_of_guests)
  end

  def test_remove_guest
    @room1.remove_guest(@guest1)
    assert_equal(0, @room1.number_of_guests)
  end

  def test_number_of_songs
    assert_equal(0, @room1.number_of_songs)
  end

  def test_add_song_to_playlist
    @room1.add_song_to_playlist(@song1)
    assert_equal(1, @room1.number_of_songs)
  end

  def test_remove_song_from_playlist
    @room1.remove_song_from_playlist(@song1)
    assert_equal(0, @room1.number_of_songs)
  end

  def test_capacity_vs_guests__spaces_available
    assert_equal("Spaces available", @room1.capacity_vs_guests)
  end

  def test_capacity_vs_guests__room_full
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.add_guest(@guest4)
    assert_equal("Room full", @room1.capacity_vs_guests)
    # we now have four guests in the room, therefore the room is full.
  end

  def test_entry_fee
    assert_equal(10, @room1.show_entry_fee)
  end

  def test_guest_can_pay_fee__true
    assert_equal(true, @room1.guest_can_pay_fee(@guest1))
  end

  def test_guest_can_pay_fee__false
    assert_equal(false, @room1.guest_can_pay_fee(@guest2))
  end

  def test_show_room_name
    assert_equal("funk and soul", @room1.show_room_name)    
  end

end

