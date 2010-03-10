count = 5
tries = 2

if count > 10
  puts "try again"
elsif tries == 3
  puts "you lose!"
else
  puts "enter a number"
end

while line = gets
  puts line.downcase
end

radiation = 4000

if radiation > 300
  puts "warning..."
end

puts "Danger, Will Robinson!" if radiation > 3000

square = 2
while square < 1000
  square = square*square
end

square = 2
square = square*square  while square < 1000

