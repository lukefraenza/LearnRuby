#ARGV is an array of all passed arguments
puts "you have #{ARGV.size} arguments"
p ARGV

# ARGF is a special kind of I/O object that acts like all the contents of all
# the files whose names are passed on the command line (or standard input if
# you don't pass any filenames)
