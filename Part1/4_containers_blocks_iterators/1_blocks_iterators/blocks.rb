# block: chunk of code

some_array = %w( all you single ladies)
p some_array

some_array.each {|value| puts value * 3 }
sum = 0

other_array = [1,2,3,4]
other_array.each do |value|
  sum += value
  puts value / sum
end