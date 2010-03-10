def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block {puts "in the block" }

def who_says_what
  yield("Dave", "hi")
  yield("Andy", "bye")
end

who_says_what {|person,phrase| puts "#{person} says #{phrase}"}

animals = %w( ant bee cat dog elk )
animals.each {|animal| puts animal }

['cat', 'dog', 'horse'].each {|name| print name, " " }
5.times { print "*" }
3.upto(6) {|i| print i}
('a'..'e').each {|char| print char}


