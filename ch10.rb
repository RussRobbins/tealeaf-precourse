# Recursion - Civ III Mapping

# M = 'land'
# o = 'water'
# world = [[o,o,o,o,o,o,o,o,o,o,o],
#          [o,o,o,o,M,M,o,o,o,o,o],
#          [o,o,o,o,o,o,o,o,M,M,o],
#          [o,o,o,M,o,o,o,o,o,M,o],
#          [o,o,o,M,o,M,M,o,o,o,o],
#          [o,o,o,o,M,M,M,M,o,o,M],
#          [M,M,M,M,M,M,M,M,M,M,o],
#          [o,o,o,M,M,o,M,M,M,o,o],
#          [o,o,o,o,o,o,M,M,o,o,o],
#          [o,M,o,o,o,M,o,o,o,o,o],
#          [o,o,o,o,o,M,o,o,o,o,o]]
# def continent_size world, x, y
#   max_size = world.count - 1
#   if (x > max_size) || (y > max_size) || (x < 0) || (y < 0)
#     return 0
#   elsif (world[y][x] != 'land')
#     return 0
#   end
#   size = 1
#   world[y][x] = 'counted land'
#   size = size + continent_size(world, x-1, y-1)
#   size = size + continent_size(world, x  , y-1)
#   size = size + continent_size(world, x+1, y-1)
#   size = size + continent_size(world, x-1, y  )
#   size = size + continent_size(world, x+1, y  )
#   size = size + continent_size(world, x-1, y+1)
#   size = size + continent_size(world, x  , y+1)
#   size = size + continent_size(world, x+1, y+1)
#   size
# end
# puts continent_size(world, 5, 5)


# My own recursive sort

# def sort some_array  #  This "wraps" recursive_sort.
#   recursive_sort some_array, []
# end
# def recursive_sort unsorted_array, sorted_array
#   if (unsorted_array.length <= 0)
#     return sorted_array
#   end
#   first = unsorted_array.pop
#   still_unsorted = []
#   unsorted_array.each do |test_me|
#     if test_me < first
#       still_unsorted.push first
#       first = test_me
#     else
#       still_unsorted.push test_me
#     end
#   end
#   sorted_array.push first
#   recursive_sort still_unsorted, sorted_array
# end

# my_array = ["zebra", "parsonage", "alphabet", "99 Luftballoons", "gadzooks!", "parsonage", "hallelujah!"]
# puts "Using array.sort:"
# puts my_array.sort!

# puts ""
# puts "Using my sort:"
# puts sort my_array


# My dictionary_sort

# def sort some_array  #  This "wraps" recursive_sort.
#   dic_sort some_array, []
# end
# def dic_sort unsorted_array, sorted_array
#   if (unsorted_array.length <= 0)
#     return sorted_array
#   end
#   first = unsorted_array.pop
#   still_unsorted = []
#   unsorted_array.each do |test_me|
#     if test_me.downcase < first.downcase
#       still_unsorted.push first
#       first = test_me
#     else
#       still_unsorted.push test_me
#     end
#   end
#   sorted_array.push first
#   dic_sort still_unsorted, sorted_array
# end

# my_array = ["Zebra", "parsonage", "alphabet", "99 Luftballoons", "Gadzooks!", "Parsonage", "hallelujah!"]
# puts "Original array:"
# puts my_array.join(', ')

# puts ""
# puts "Using my dictionary sort:"
# puts (sort my_array).join(', ')


# english_number

def english_number number
  if number < 0  #  No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  #  No more special cases!  No more returns!
  num_string = ''  #  This is the string we will return.
  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  #  "left" is how much of the number
  #         we still have left to write out.
  #  "write" is the part we are
  #          writing out right now.
  #  write and left...get it  :)
  left  = number

  write = left/1000000000000
  left  = left - write*1000000000000
  if write > 0
    #  Now here's the recursion:
    trillions  = english_number write
    num_string = num_string + trillions + ' trillion'
      if left > 0
      #  So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/1000000000
  left  = left - write*1000000000
  if write > 0
    #  Now here's the recursion:
    billions  = english_number write
    num_string = num_string + billions + ' billion'
      if left > 0
      #  So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/1000000
  left  = left - write*1000000
  if write > 0
    #  Now here's the recursion:
    millions  = english_number write
    num_string = num_string + millions + ' million'
      if left > 0
      #  So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/1000          #  How many thousands left
  left  = left - write*1000  #  Subtract off those thousands.
  if write > 0
    #  Now here's the recursion:
    thousands  = english_number write
    num_string = num_string + thousands + ' thousand'
      if left > 0
      #  So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/100          #  How many hundreds left
  left  = left - write*100  #  Subtract off those hundreds.
  if write > 0
    #  Now here's the recursion:
    hundreds  = english_number write
    num_string = num_string + hundreds + ' hundred'
      if left > 0
      #  So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end
  write = left/10          #  How many tens left
  left  = left - write*10  #  Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of
      #  "twelve", we have to make a special exception
      #  for these.
      num_string = num_string + teenagers[left-1]
      #  The "-1" is because teenagers[3] is
      #  'fourteen', not 'thirteen'.
      #  Since we took care of the digit in the
      #  ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      #  The "-1" is because tens_place[3] is
      #  'forty', not 'thirty'.
    end
    if left > 0
      #  So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end
  write = left  #  How many ones left to write out
  left  = 0     #  Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    #  The "-1" is because ones_place[3] is
    #  'four', not 'three'.
  end
  #  Now we just return "num_string"...
  num_string
end
# puts english_number(  0)
# puts english_number(  9)
# puts english_number( 10)
# puts english_number( 11)
# puts english_number( 17)
# puts english_number( 32)
# puts english_number( 88)
# puts english_number( 99)
# puts english_number(100)
# puts english_number(101)
# puts english_number(234)
# puts english_number(3211)
# puts english_number(27465)
# puts english_number(999999)
# puts english_number(1000000)
# puts english_number(100000000000)
# puts english_number(1000000000000)


# DA BEERS v2.0
beers = 99
while beers > 0
  eng_beers = english_number beers
  eng_beers_less_1 = english_number (beers - 1)
  puts eng_beers.capitalize + " bottles of beer on the wall, " + eng_beers + " bottles of beer."
  puts "Take one down, pass it around, " + eng_beers_less_1 + " bottles of beer on the wall!"
  puts ""
  beers -= 1
end
puts "All outta beer!"

