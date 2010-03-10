a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]
puts a[0]  #=> "ant"
puts a[3]  #=> "dog"

# this is the same:

b = %w{ ant bee cat dog elk }
puts b[0]  
puts b[3]  

inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}

p inst_section['cello']
p inst_section['oboe']
p inst_section['bassoon']
