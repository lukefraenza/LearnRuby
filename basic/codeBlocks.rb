# code blocks: chunks of code you can associate with method invocations, almost
# as if they were parameters.  you can use them to implement callbacks, pass
# around chunks of code, and implement iterators.

# the block and the method are like co-routines, passing control back and forth
# to each other.  Call the block from the method using "yield"

#use braces for single-line blocks and do/end for multiline

# this is a code block:
# { puts "hi" }

# so is this:
# do
#     club.enroll(person)
#     person.socialize
# end

# verbose_greet("dave", "loyal customer")  {puts "hi" }

def call_block
  puts "start of method"
  yield
  yield
  puts "end of method"
end

call_block { puts "In the block" }

def who_says_what
  yield("Dave", "hi")
  yield("Andy", "bye")
end

who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

#iterators can be implemented with code blocks

animals = %w( ant bee cat dog elk )
animals.each {|animal| puts animal }


[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
5.times { print "*" }
3.upto(6) {|i| print i }
('a'..'e').each {|char| print char}

