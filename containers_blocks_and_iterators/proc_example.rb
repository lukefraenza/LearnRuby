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
