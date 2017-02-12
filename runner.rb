require_relative ('room')
require_relative ('guest')
require_relative ('song')

# For use by the staff at CCC:
# Type in the name of the room.
# Check-in guest(s) to the room. 
# Add a song to the playlist for that room.
# Check-out guest(s) from the room.
# Confirm if guests have enough money to pay fee.

puts "Welcome to CodeClanCaraoke!"
puts "Let's make a new room. What would you like to call it?"
room_name = gets.chomp
puts
puts "How many people will be able to use the room?"
room_capacity = gets.chomp
puts
puts "What will the entry fee be?"
entry_fee = gets.chomp
puts
puts "Great, you have set up a new room called #{room_name}, which has a capacity of #{room_capacity} and an entry fee of #{entry_fee}."

room1 = Room.new(room_name, room_capacity, [], [], entry_fee)

puts "Now, let's add some guests to #{room_name}. Enter the name of the first guest"
guest1 = gets.chomp

room1.add_guest(guest1)

puts
puts "How much money do they have on them?"
money1 = gets.chomp

if money1 < entry_fee
  print "Oh no! #{guest1} doesn't have enough money to use #{room_name}."
else
  print nil
end

# puts
# puts "What is their favourite song?"
# favourite_song1 = gets.chomp
# puts
# puts "Great, you have added a new guest called #{guest1}, who has #{money1} and their favourite song is #{favourite_song1}"

# guest1 = Guest.new(guest1, money1, favourite_song1)

# puts
# puts "Now enter the name of the second guest"
# guest2 = gets.chomp
# puts
# puts "How much money do they have on them?"
# money2 = gets.chomp
# puts
# puts "And do they have a favourite song?"
# favourite_song2 = gets.chomp
# puts
# puts "Great, you have added a new guest called #{guest2}, who has #{money2} and their favourite song is #{favourite_song2}"

# guest2 = Guest.new(guest2, money2, favourite_song2)

