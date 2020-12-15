n = gets.chomp.to_i

smallest = 1000000000

(2..100000).each do |a|
  b = (n - a).abs
  a_total = a/1%10 + a/10%10 + a/100%10 + a/1000%10 + a/10000%10
  b_total = b/1%10 + b/10%10 + b/100%10 + b/1000%10 + b/10000%10
  total = a_total + b_total
  if total < smallest
    smallest =+ total
  end
  binding.irb
end

puts smallest