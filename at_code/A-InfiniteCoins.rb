n = gets.chomp.to_i
a = gets.chomp.to_i

over = n%500

if a < over
  puts 'No'
else
  puts 'Yes'
end
