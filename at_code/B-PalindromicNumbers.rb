# https://atcoder.jp/contests/abc090/tasks/abc090_b

a,b = gets.chomp.split(' ').map(&:to_i)

sum_count = 0

(a..b).each do |i|
  # i/1%10で１のくらいの整数を出力できる
  # i/10%10で10のくらいの整数を出力できる
  if i/1%10 == i/10000%10 && i/10%10 == i/1000%10
    sum_count += 1
  end
end

puts sum_count
