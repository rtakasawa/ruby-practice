# 参照先：https://atcoder.jp/contests/agc025/tasks/agc025_a

n = gets.chomp.to_i

smallest = 100000

(2..100000).each do |a|
  b = n - a
  a_total = a/1%10 + a/10%10 + a/100%10 + a/1000%10 + a/10000%10
  b_total = b/1%10 + b/10%10 + b/100%10 + b/1000%10 + b/10000%10
  total = a_total + b_total
  if smallest > total
    smallest =+ a_total + b_total
  end
end

puts smallest