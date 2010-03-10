histogram = Hash.new(0)  # The default value is zero
p histogram['ruby']
histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby']

