
def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

# p words_from_string("But I didn't inhale, he said (emphatically)")

def count_frequency(word_list)
  counts = Hash.new(0) # This sets the default value to 0, instead of failing
  for word in word_list
    counts[word] += 1
  end
  counts
end

# p count_frequency(%w(sparky the cat sat on the mat))

raw_text = File.read("para.txt")
word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)


top_five.each do |word, count|
  puts "#{word}: #{count}"
end
