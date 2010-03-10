# puts writes its arguments with a newline after each
# print does this with no newline
# printf prints under control of a format string

printf("Number: %5.2f,\nString: %s\n", 1.23, "hello")

# traditional way to read input: gets
line = gets
print line

while line = gets
  print line
end 
