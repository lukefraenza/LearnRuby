
# an iterator is simply a method that can invoke a block of code

def three_times
  yield
  yield
  yield
end
three_times {puts "Hello"}
three_times {puts " "}

def fib_up_to(max)
  i1, i2 = 1, 1      # parallel assignment
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib_up_to(1000) {|f| print f, " " }

# collect (aka map) takes each element from the collection and passes it to the
# block the results returned by the block are used to construct a new array.
# The following uses the succ method, which increments a string value:

p ["H","A","L"].collect {|x| x.succ }



# f = File.open("testfile")
# f.each_with_index do |line, index|
#   puts "Line #{index} is: #{line}"
# end
# f.close

# Inject lets you accumulate a value across the members of a collection.  you
# can sum all the elements in an array, and find their product, for example:

puts [1,3,5,7].inject(0) {|sum, element| sum+element}
puts [1,3,5,7].inject(1) {|product, element| product*element}
puts [1,3,5,7].inject {|sum, element| sum+element}
puts [1,3,5,7].inject {|product, element| product*element}
puts [1,3,5,7].inject(:+)
puts [1,3,5,7].inject(:*)
