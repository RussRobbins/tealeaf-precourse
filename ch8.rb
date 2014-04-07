# TRY THIS
# letters = ['a', 'b', ['c', 'd', 'e']]
# 3.times do
#   puts letters
# end

# # Building and sorting an array
# arr = []
# puts "Enter one word per line, or a null to end:"

# while true
#   str = gets.chomp
#   if str == ""
#     break
#   else
#     arr.push str
#   end
# end

# arr.sort!
# puts arr


# Table of Contents
# I already used arrays in Ch.6, but now I'll use nested arrays and .each instead of a for loop
line_width = 60
header = "Table of Contents"
text = 
[
  ["Chapter 1: Getting Started", "page 1"],
  ["Chapter 2: Numbers", "page 9"],
  ["Chapter 3: Letters", "page 13"]
]

puts header.center(line_width)
puts ''

text.each do |arr|
  puts arr[0].ljust(line_width/2) + arr[1].rjust(line_width/2)
end

