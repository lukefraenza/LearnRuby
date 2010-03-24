
for i in 0...5
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}:  #{count}"
end

# this can be rewritten as:

top_five.each do |word, count|
  puts "#{word}:  #{count}"
end

# or:

puts top_five.map { |word, count| "#{word}:  #{count}" }

