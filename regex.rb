# matches Perl or Python:

a = /Perl|Python/
b = /P(erl|ython)/

/\d\d:\d\d:\d\d/     # a time such as 12:34:56
/Perl.*Python/       # Perl, zero or more other chars, then Python
/Perl Python/        # Perl, a space, and Python
/Perl *Python/       # Perl, zero or more spaces, and Python
/Perl +Python/       # Perl, one or more spaces, and Python
/Perl\s+Python/      # Perl, whitespace characters, then Python
/Ruby (Perl|Python)/ # Ruby, a space, and either Perl or Python

# match operator =~

line = "Python (not Perl) is okay, but I've never tried Perl Python"
if line =~ a
    puts "mentioned: #{line}"
end

line = line.sub(/Perl/, 'Ruby')    # replace first
line = line.gsub(/Python/, 'ruBy')  # replace all

puts line
