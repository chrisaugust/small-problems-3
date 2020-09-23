# Asks user for a word or multiple words,
# gives back number of characters, excluding spaces.
#
# Examples:
# 
# input
# Please write word or multiple words: walk
# 
# output
# There are 4 characters in "walk".
#
# input
# Please write word or multiple words: walk, don't run
#
# output
# There are 13 characters in "walk, don't run".
#
# Data Structure:
# string var converted to array to eliminate spaces
# for the character count
#
# Algorithm:
# 1) prompt user for word/words
# 2) assign input to a variable
# 3) create an array with the string characters, excluding spaces
# 4) count the number of characters and assign count to variable
# 5) display count variable interpolated in the output message

# prompt user for word/words; assign input to variable
puts "Please write word or multiple words: "
input_string = gets.chomp

# convert to array for counting
characters = input_string.split('')

# count the characters
count = 0
characters.each { |char| count += 1 unless char == " "}

# display character count
puts "There are #{count} characters in \"#{input_string}\"."
