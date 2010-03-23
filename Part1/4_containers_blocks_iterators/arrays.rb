a = [ 3.14159, "pie", 99 ]
p a.class
p a.length
p a[0]
p a[1]
p a[2]
p a[3]

b = Array.new
p b.class
p b.length
b[0] = "second"
b[1] = "array"
p b

a = [1,2,3,4,5]
p a[-1]
p a[4]
p a[1,3]
p a[-3, 2]
p a[1..3]
p a[1...3]
p a[2..3]
p a[2...3]

a[1] = 'bat'
a[-3] = 'cat'
p a
a[-3] = [9,8]
p a
a[6] = 99
p a


a = [ 1, 3, 5, 7, 9]
p a
a[2,2] = 'cat'
p a
a[2,0] = 'dog'
p a
a[1,1] = [9,8,7]
p a
a[0..3] = []
p a
a[5..6] = 99, 98
p a

# Stacks and Queues

stack = []
stack.push "red"
stack.push "green"
stack.push "blue"
p stack
puts stack.pop
puts stack.pop
puts stack.pop
p stack

queue = []
queue.push "red"
queue.push "green"
queue.push "blue"
puts queue.shift
puts queue.shift

