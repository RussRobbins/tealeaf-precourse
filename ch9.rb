# MOOS
# def say_moo number_of_moos
#   puts 'mooooo...'*number_of_moos
# end
# ret_val = say_moo 3
# puts ret_val


# Improved ask method
# def ask question
#   while true
#     puts question
#     reply = gets.chomp.downcase
#     if reply == "yes"
#       return true
#     elsif reply == "no"
#       return false
#     else
#       puts "Please answer 'yes' or 'no'."
#     end
#   end
# end

# puts 'Hello, and thank you for...'
# puts
# ask 'Do you like eating tacos?'       #  Ignore this return value
# ask 'Do you like eating burritos?'    #  And this one
# wets_bed = ask 'Do you wet the bed?'  #  Save this return value
# ask 'Do you like eating chimichangas?'
# ask 'Do you like eating sopapillas?'
# puts 'Just a few more questions...'
# ask 'Do you like drinking horchata?'
# ask 'Do you like eating flautas?'
# puts
# puts 'DEBRIEFING:'
# puts 'Thank you for...'
# puts
# puts wets_bed


# Old school Roman Numerals
# def old_roman_numeral num
#   keys = [
#     [1000, "M"],
#     [500, "D"],
#     [100, "C"],
#     [50, "L"],
#     [10, "X"],
#     [5, "V"],
#     [1, "I"],
#   ]

#   ret = ""
#   keys.each do |pair|
#     numeral = pair[0]
#     letter = pair[1]
#     while (num - numeral) >= 0
#       ret += letter
#       num = num - numeral
#     end
#   end
#   return ret
# end

# puts old_roman_numeral 1299


# New school Roman Numerals
def new_roman_numeral num
  keys = [
    [1000, "M"],
    [500, "D"],
    [100, "C"],
    [50, "L"],
    [10, "X"],
    [5, "V"],
    [1, "I"],
  ]

  ret = ""
  keys.each_with_index do |pair, index|
    numeral = pair[0]
    letter = pair[1]
    if index>0
      last_numeral = keys[(index-1)][0]
      last_letter = keys[(index-1)][1]
    else
      last_numeral = 1
      last_letter = ""
    end
    while (num - numeral) >= 0
      comp = num - (num % numeral)
      if (comp + numeral) == last_numeral
        ret += letter + last_letter
        num = num - (last_numeral - numeral)
      else
        ret += letter
        num = num - numeral
      end
    end
  end
  return ret
end

puts "Enter a decimal number under 3000:"
target = gets.chomp
puts new_roman_numeral target.to_i

