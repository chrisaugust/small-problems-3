# Palindromic Strings II
#
# Problem: Update the palindrome? method from Palindromic Strings I
# to be case-insensitive and ignore non-alphanumeric characters.
#
# Examples:
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true
# real_palindrome?("Madam, I'm Adam") == true
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false
#
# Data Structures:
# array for splitting string, processing, and joining to produce
# reversed string for comparison
#
# Algorithm:
# 1) create a list with the chars of the argument string
# 2) iterate through list of chars, making all chars lower case,
#    and removing non alphanumerics
# 3) join list to create a stripped argument string
# 4) loop to create a reversed list
# 5) join reversed list to create reversed string
# 6) compare stripped and reversed strings
#
# Code:

require './palindromic_strings_1'

def real_palindrome?(possible_palindromic_str)
  stripped_string = strip_string_of_nonalphanumerics(possible_palindromic_str)
  true if palindrome?(stripped_string)
end

def strip_string_of_nonalphanumerics(ugly_str)
  # downcase
  ugly_str.downcase!

  # remove non-alphanumerics
  ugly_char_list = ugly_str.split('')
  ugly_char_list.each { |char| char.gsub!(/\W/, '') }

#  p ugly_char_list
  ugly_char_list.join('')
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("Madam, I'm Adam") == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
