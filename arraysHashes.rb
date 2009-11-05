#Arrays

a = [ 1, 'cat', 3.14 ] # array with 3 elements
puts "the first is #{a[0]}"
# set the 3rd element
a[2] = nil
puts "The array is now #{a.inspect}"

b = %w{ ant bee cat dog elk }
puts b[0]
puts b[3]

# Hashes
inst_section = {
    'cello' => 'string',
    'clarinet' => 'woodwind',
    'drum' => 'percussion',
    'oboe' => 'woodwind',
    'trumpet' => 'brass',
    'violin' => 'string'
}

p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']
puts inst_section['bassoon']
