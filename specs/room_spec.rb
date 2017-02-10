require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new()    
  end

end


