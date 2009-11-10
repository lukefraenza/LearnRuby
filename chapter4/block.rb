a = %w(and so  it was)
a.each {|value| puts value * 3}

sum = 0
square = "shape!"
[1,2,3,4].each do |value; square| # putting a variable name after a semicolon declares it as block local
  square = value * value
  sum   += square
end
puts sum
puts square

value = "some shape"
[1,2].each {|value| puts value }
puts value
