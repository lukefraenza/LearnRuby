class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end
  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}" }
eg.use_proc(99)

# returning the proc object to the caller

def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"

# both lambda and Proc.new take a block and return an object of class Proc

bo = lambda  { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"

def n_times(thing)
  lambda {|n| thing * n}
end

p1 = n_times(23)
p1.call(3)
p1.call(4)
p2 = n_times("Hello ")
p2.call(3)


# another lambda notation

proc1 = -> arg { puts "In proc1 with #{arg}" }
proc2 = -> arg1, arg2 {  puts "In proc2 with #{arg1} and #{arg2}"  }
proc3 = ->(arg1, arg2) {  puts "In proc3 with #{arg1} and #{arg2}"  }
proc1.call "ant"
proc2.call "bee", "cat"
proc3.call "dog", "elk"


# pass one or more Proc objects to a method


def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if val < 3,
    -> { puts "#{val} is small " },
    -> { puts "#{val} is big " }
end


# redoing a while loop

def my_while(cond, &body)
  while cond.call
    body.call
  end
end

a = 0
my_while -> { a < 3 } do
  puts a
  a += 1
end


# block Parameter lists
proc1 = lambda do |a, *b, &block|
  puts "a = #{a.inspect} "
  puts "b = #{b.inspect} "
  block.call
end
proc1.call(1,2,3,4) { puts "in block1" }

proc2 = -> a, *b, &block do
  puts "a = #{a.inspect} "
  puts "b = #{b.inspect} "
  block.call
end
proc2.call(1,2,3,4) { puts "in block2" }




