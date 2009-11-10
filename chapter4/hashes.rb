
h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
h.length
puts h['dog']
puts h['cow']

h2 = { dog: 'canine', cat: 'feline', donkey: 'asinine' }

p h2


h.each { |x| puts x }
