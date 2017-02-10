require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new(10)    
  end

  def test_show_capacity
    assert_equal(10, @room1.show_capacity)
  end

end

