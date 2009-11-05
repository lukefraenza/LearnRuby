#Symbols
# - constant names that you don't have to predeclare and are guaranteed unique.
# - frequenty used as keys in hashes

inst_section = {
    :cello      =>  'string',
    :clarinet   =>  'woodwind',
    :drum       =>  'percussion',
    :oboe       =>  'woodwind',
    :trumpet    =>  'brass',
    :violin     =>  'string'
}

p inst_section[:oboe]
p inst_section[:cello]
p inst_section['cello']

# new Ruby 1.9 feature: use name: value pairs to create hash if keys are
# symbols

sec = {
    rabbit:     'mammal',
    turtle:     'amphibian',
    snake:      'reptile'
}
puts "a snake is a #{sec[:snake]}"
