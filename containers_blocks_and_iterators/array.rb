# arrays
a = Array.new
puts a.class
puts a.length
b = %w(silly rabbit trix are for kids)
p b

# Stack
stack = []
stack.push "red"
stack.push "green"
stack.push "blue"
p stack
puts stack.pop
puts stack.pop
puts stack.pop
p stack

# FIFO queue
q = []
q.push "red"
q.push "green"
puts q.shift
puts q.shift
