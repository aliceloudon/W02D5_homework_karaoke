require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Rob", 100, "Stay the Same")
  end

  def test_money
    assert_equal(100, @guest1.money)
  end

end