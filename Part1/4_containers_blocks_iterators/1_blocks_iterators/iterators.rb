# An iterator is a method that can invoke a block of code

def three_times
  yield
  yield
  yield
end

three_times { puts "Hello"}

def fib_up_to(max)
  i1, i2, = 1, 1      # parallel assignment (i1 = 1 and i2 = 1)
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end
fib_up_to(1) {|f| print f, " " }
puts " "
fib_up_to(1000) {|f| print f, " " }
puts " "

# the value of the last expression evaluated in the block is 
# passed back to the method as the value of the yield

class Array
  def find
    for i in 0...size
      value = self[i]
      return value if yield(value)
    end
    return nil
  end
end

puts [1,3,5,7,9].find {|v| v*v > 30 }

# each yields successive elements of its collection
[1,3,5,7,9].each {|i| puts i}

# collect (aka map) takes each element from the collection and
# passes it to the block.  The results returned by the block are
# used to construct a new array.
# The following uses the succ method, which increments a string value:

array1 = ["H", "A", "L"].collect {|x| x.succ }
p array1

f = File.open("testfile")
f.each do |line|
  puts "The line is: #{line}"
end
f.close

f = File.open("testfile")
f.each_with_index do |line,  index|
  puts "Line #{index} is: #{line}"
end
f.close

# inject lets you accumulate a value across the members of a collection.
# for example, you can sum all the elements in an array, etc.

p [1,3,5,7].inject(0) {|sum, element| sum+element}
p [1,3,5,7].inject(1) {|product, element| product*element}

# called with no parameter uses the first element as the initial value
p [1,3,5,7].inject {|sum, element| sum+element}
p [1,3,5,7].inject {|product, element| product*element}

# you can also give inject the name of a method you want to apply to
# successive elements of the collection

p [1,3,5,7].inject(:+)
p [1,3,5,7].inject(:*)


