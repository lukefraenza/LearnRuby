a = /Perl|Python/
b = /P(erl|ython)/
c = /ab+c/

time = /\d\d:\d\d:\d\d/
d = /Perl.*Python/
e = /Perl Python/
f = /Perl *Python/
g = /Perl +Python/
h = /Perl\s+Python/
i = /Ruby (Perl|Python)/

while line = gets
  if line =~ /Perl|Python/
    puts "Scripting language mentioned: #{line}"
    line = line.sub(/Perl/, 'Ruby')  # Replace first Perl with Ruby
    line = line.gsub(/Python/, 'Ruby')  # Replace every Python with Ruby
    puts "new line: #{line}"
  else
    p "enter another: "
  end
end
