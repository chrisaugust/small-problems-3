# Palindromic String I
#
# Problem: write a method that returns true if argument (a string) is palindromic,
# return false if not a palindrome. Case, punctuation, and spaces all matter.
#
# Example(s): 
# palindrome?('madam') == true
# palindrome?('Madam') == false           # (case matters)
# palindrome?("madam i'm adam") == false  # (all chars matter)
# palindrome?('356653') == true
#
# Data Structures:
# array to iterate over
#
# Algorithm:
# version 1) use the reverse function
# version 2) break string argument into a list of chars, char_list
#            initialize a new (empty) list, reverse_list
#            loop do
#               pop the last char from the char_list and append to reverse_list
#            end
#            join the chars in reverse_list and assign to var, reversed_string
#            return reversed_string
#            
#
# Code:

# def palindrome?(pal_str)
#   reversed = pal_str.reverse
#   true if pal_str == reversed
# end 

def palindrome?(pal_str)
  char_list = pal_str.split
  reverse_list = Array.new
  char_list.length.times do
    reverse_list.push(char_list.pop) unless char_list == []
  end
  reversed_string = reverse_list.join('')
  true if pal_str == reversed_string
end

# Tests:

# p palindrome?('madam') == true
# p palindrome?('Madam') == false
# p palindrome?("madam i'm adam") == false  # all chars matter
# p palindrome?('356653') == true
