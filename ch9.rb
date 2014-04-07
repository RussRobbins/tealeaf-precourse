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
def old_roman_numeral num
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

  #while num >= 0
    keys.each do |pair|
      divisor = pair[0]
      letter = pair[1]
      quotient = num/divisor
      if quotient > 0
        ret += letter
      else
        #break
      end
      num = num%divisor
    end
  end
  return ret
#end

puts old_roman_numeral 2010

