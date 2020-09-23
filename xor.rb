# Method that takes two arguments and returns either:
#    true if exactly one argument is truthy
#    false otherwise
#
# Examples:
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false
#
# Data Structure:
# No special data structure, just conditionals within method
#
# Algorithm:
# 1) evaluate truthiness of arguments
# 2) if truthiness of arguments is the same, return false
# 3) if truthiness of arguments are not the same, return true
#

def xor?(arg1, arg2)
  if !!arg1 == !!arg2
    false
  else
    true
  end 
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false 
p xor?(5.even?, 4.odd?) == false
p xor?(true, false) == true
p xor?(nil, true) == true
p xor?(nil, false) == false
p xor?(true, 5.odd?) == false
