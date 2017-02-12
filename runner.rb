# For use by the staff at CCC:
# Type in the name of the room.
# Check-in guest(s) to the room. 
# Add a song to the playlist for that room.
# Check-out guest(s) from the room.
# Confirm if guests have enough money to pay fee.

require_relative ('room')
require_relative ('guest')
require_relative ('song')

puts "Welcome to CodeClanCaraoke!"
puts "What would you like to do first? Add a room, guest or song?"
answer = gets.chomp

if answer == "room"

  puts
  puts "Great. What would you like to call the room?"
  room_name = gets.chomp

  puts
  puts "How many people will be able to use the room?"
  room_capacity = gets.chomp

  puts
  puts "What will the entry fee be?"
  entry_fee = gets.chomp

  puts
  puts "You have set up a new room called #{room_name}, which has a capacity of #{room_capacity} and an entry fee of #{entry_fee}."

  # @room1 = Room.new(room_name, room_capacity, [], [], entry_fee)
  # puts @room1.show_entry_fee

elsif answer == "guest"

  puts
  puts "What is the name of the guest?"
  guest_name = gets.chomp

  puts
  puts "Which room are you adding the guest to? The following are available:"
  puts @room1.show_room_name

  puts
  puts "How much money does #{guest_name} have (in GBP)?"
  guest_money = gets.chomp

  # if money >= entry_fee
  #   puts nil
  # else
  #   puts "Oh no! #{guest} doesn't have enough money to use #{room_name}."
  # end

  puts
  puts "What is their favourite song?"
  favourite_song = gets.chomp

  puts
  puts "You have added a new guest called #{guest_name}, who has #{guest_money} and their favourite song is #{favourite_song}."

  # @guest1 = Guest.new(guest_name, guest_money, favourite_song)


elsif answer == "song"

  puts
  puts "What is the name of the song you would like to add to the playlist?"
  song_name = gets.chomp

  puts
  puts "What is the length of the song (in minutes)?"
  song_length = gets.chomp

  puts
  puts "OK. You have added a new song called #{song_name}, with a length of #{song_length}."

else 

  puts "Sorry, I didn't quite get that. Please type in 'room', 'guest' or 'song'."

end

return room.name