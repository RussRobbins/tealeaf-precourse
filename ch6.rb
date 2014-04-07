# puts "First name > "; fname = gets.chomp
# puts "Middle name > "; mname = gets.chomp
# puts "Last name > "; lname = gets.chomp
# puts 'Pleased to meet you, ' + fname + ' ' + mname + ' ' + lname + '.  :)'
# puts 'Did you know there are ' + (fname.length + mname.length + lname.length).to_s + ' letters in your full name?'

# line_width = 50
# puts(                'Old Mother Hubbard'.center(line_width))
# puts(               'Sat in her cupboard'.center(line_width))
# puts(        'Eating her curds and whey,'.center(line_width))
# puts(          'When along came a spider'.center(line_width))
# puts(           'Who sat down beside her'.center(line_width))
# puts('And scared her poor shoe dog away.'.center(line_width))

# line_width = 40
# str = '--> text <--'
# puts(str.ljust( line_width))
# puts(str.center(line_width))
# puts(str.rjust( line_width))
# puts(str.ljust(line_width/2) + str.rjust(line_width/2))


# Angry Boss
# puts "Say something >"
# statement = gets.chomp
# puts "WHADDAYA MEAN \"" + statement + "\"?!? YOU'RE FIRED!!"


# Table of Contents - Went on and learned arrays and for loops because I'm lazy
line_width = 60
header = "Table of Contents"
chapters = ["Chapter 1: Getting Started", "Chapter 2: Numbers", "Chapter 3: Letters"]
pages = ["page 1 ", "page 9", "page 13"]
puts header.center(line_width)
puts ''
for i in 0..2
   puts chapters[i].ljust(line_width/2) + pages[i].rjust(line_width/2)
end

