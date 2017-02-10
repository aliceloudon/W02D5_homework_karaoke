require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Crave You", 4)
  end  

  def test_show_name
    assert_equal("Crave You", @song1.show_name)
  end

end