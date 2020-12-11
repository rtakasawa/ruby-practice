total = gets.chomp.to_i

count = 0

(0..25).each do |i|
  if 4 * i <= total
    (0..15).each do |k|
      if 4 * i + 7 * k == total
        count += 1
      end
    end
  end
end

if count > 0
  puts 'Yes'
else
  puts 'No'
end