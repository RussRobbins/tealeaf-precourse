# # DA BEERS
# beers = 99
# while beers > 0
#   puts beers.to_s + " bottles of beer on the wall, " + beers.to_s + " bottles of beer."
#   puts "Take one down, pass it around, " + (beers - 1).to_s + " bottles of beer on the wall!"
#   puts ""
#   beers -= 1
# end
# puts "All outta beer!"

# DEAF GRANDMA
# while true
#   puts "What do you say to Grandma?"
#   say = gets.chomp
#   if say == "BYE"
#     break
#   end
#   if say == say.upcase
#     year = 1930 + rand(21)
#     puts "Grandma says, 'NO, NOT SINCE " + year.to_s + "!'"
#   else
#     puts "Grandma says, 'HUH?!  SPEAK UP, SONNY!'"
#   end
# end

# DEAF GRANDMA EXT.
# count = 0
# while true
#   puts "What do you say to Grandma?"
#   say = gets.chomp
#   if say == "BYE"
#     count += 1
#   else
#     count = 0
#   end

#   if count == 3
#     puts "Grandma says, 'OH FINE, SEE YOU LATER SONNY.'"
#     break
#   end

#   if say == "BYE"
#     puts "Grandma says, 'EH? WHAT'S THAT? COULDN'T HEAR YOU DEAR.'"
#   elsif say == say.upcase
#     year = 1930 + rand(21)
#     puts "Grandma says, 'NO, NOT SINCE " + year.to_s + "!'"
#   else
#     puts "Grandma says, 'HUH?!  SPEAK UP, SONNY!'"
#   end
# end

# LEAP YEARS
puts "Enter starting year:"
start_year = gets.chomp
puts "Enter ending year:"
end_year = gets.chomp

cur_year = start_year.to_i
output = ""
while cur_year <= end_year.to_i
  if cur_year%400 == 0
    output += cur_year.to_s + ' '
  elsif cur_year%4 == 0 && (cur_year%400)%100 != 0
    output += cur_year.to_s + ' '
  else
  end
  cur_year += 1
end

puts "Leap years between " + start_year.to_s + " and " + end_year.to_s + ":"
puts output

