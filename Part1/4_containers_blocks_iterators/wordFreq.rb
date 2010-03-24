def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  counts = Hash.new(0)  # created a hash with default value of 0
  for word in word_list
    counts[word] += 1
  end
  counts
end

p count_frequency(words_from_string("Sparky the cat sat on the mat"))

