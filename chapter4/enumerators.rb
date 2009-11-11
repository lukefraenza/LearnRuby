
a = [ 1, 3, "cat"]
h = { dog: "canine", fox: "lupine" }

# Create Enumerators
enum_a = a.to_enum
enum_h = h.to_enum

p enum_a.next
p enum_h.next
p enum_a.next
p enum_h.next

enum_a2 = a.each # create an Enumerator using an internal iterator
p enum_a2.next
p enum_a2.next
p enum_a2.next

short_enum = [1,2,3].to_enum
long_enum = ('a'..'z').to_enum
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

puts "------------------"
result = []
['a','b','c'].each_with_index {|item, index| result << [item, index] }
p result


puts "------------------"
result = []
"cat".each_char.each_with_index {|item, index| result << [item,index] }
p result

puts "------------------"
result = []
"cat".each_char.with_index {|item, index| result << [item,index] }
p result

puts "------------------"
enum = "cat".enum_for(:each_char)
p enum.to_a


puts "------------------"
enum_good = (1..10).enum_for(:each_slice, 3)
p enum_good.to_a

