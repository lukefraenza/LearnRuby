def walk(direction)
 if direction == :north
   puts "north!"
 end
end

walk(:south)
walk(:north)


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

inst_section2 = {
  :cello    => 'string',
  :clarinet => 'woodwind',
  :drum     => 'percussion',
  :oboe     => 'woodwind',
  :trumpet  => 'brass',
  :violin   => 'string'
}

p inst_section2[:cello]
p inst_section2[:oboe]

inst_section3 = {
  cello:    'string',
  clarinet: 'woodwind',
  drum:     'percussion',
  oboe:     'woodwind',
  trumpet:  'brass',
  violin:   'string'
}

puts "an oboe is a #{inst_section3[:oboe]}"



