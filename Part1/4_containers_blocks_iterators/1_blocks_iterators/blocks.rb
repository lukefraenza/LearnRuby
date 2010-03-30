# block: chunk of code

# some_array = %w( all you single ladies)
# p some_array

# some_array.each {|value| puts value * 3 }
# sum = 0

# other_array = [1,2,3,4]
# other_array.each do |value|
#   sum += value
#   puts value / sum
#end

# sum the squares of numbers in an array:
sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum   += square
end
puts sum

# parameters to a block are *always* local to a block, even if they 
# have the same name as locals in teh surrounding scope.

value = "some shape"
[1,2].each {|value| puts value}
puts value

square = "some shape"
sum = 0
[1,2,3,4].each do |value; square| # square is now block-local
  square = value * value
  sum   += square
end
puts sum
puts square
