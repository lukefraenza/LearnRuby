
a = [1, 3, "cat"]
h = {dog: "canine", fox: "lupine" }

# Create Enumerator
enum_a = a.to_enum
enum_h = h.to_enum

p enum_a.next 
p enum_h.next 
p enum_a.next 
p enum_h.next 

enum_a2 = a.each # create an Enumerator using an internal iterator
p enum_a2.next 
p enum_a2.next 

# loop does nothing but repeatedly invoke it's block
# it will terminate cleanly when an enumerator inside the loop runs out

short_enum = [1,2,3].to_enum
long_enum = ('a'..'z').to_enum
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

