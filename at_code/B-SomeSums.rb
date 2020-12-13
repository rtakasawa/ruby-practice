n,a,b = gets.split(' ').map(&:to_i)

total = 0

(1..n).each do |i|
  num = i.to_s.split('').map(&:to_i)
  sum_count = num.inject(:+)
  if a <= sum_count && sum_count <= b
    total += i
  end
end

puts total