require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Crave You", 4)
    @song2 = Song.new("Steal the Light", 3)
    @song3 = Song.new("Stay the Same", 5)
    @songs_array = [@song1, @song2, @song3]
  end  

  def test_show_name
    assert_equal("Steal the Light", @song2.show_name)
  end

end