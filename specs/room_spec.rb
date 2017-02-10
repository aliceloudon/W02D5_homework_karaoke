require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new("Suzanne", 50, "Something Inside So Strong")
    @guest2 = Guest.new("David", 150, "Shut up and Dance")
    @guests_array = [@guest1, @guest2]
    @room1 = Room.new(10, @guests_array)
  end

  def test_show_capacity
    assert_equal(10, @room1.show_capacity)
  end

  def test_number_of_guests
    assert_equal(0, @room1.number_of_guests)
  end

end

