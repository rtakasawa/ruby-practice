a,b = gets.chomp.split(" ").map(&:to_i);
c = a*b
if c%2 == 0
  print 'Even'
else
  print 'Odd'
end