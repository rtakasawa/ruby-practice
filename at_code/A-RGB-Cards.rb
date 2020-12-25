r,g,b = gets.chomp.split(' ')
combined = (r + g + b).to_i

if combined%4 == 0
  puts 'YES'
else
  puts 'NO'
end
