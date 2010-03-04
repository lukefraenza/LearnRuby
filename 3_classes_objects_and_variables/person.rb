person1 = "Tim"
puts "object #{person1.class}"
puts "id: #{person1.object_id}"
puts "value: #{person1}"

person2 = person1      # alias person2 to point to the same object as person1
person3 = person1.dup  # create a new String object with identical contents
# person1.freeze         # throw an error if someone tries to alter this frozen object
person1[0] = 'J'
puts "person1 is #{person1}"
puts "person2 is #{person2}"
