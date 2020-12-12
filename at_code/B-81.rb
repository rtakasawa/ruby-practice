# https://atcoder.jp/contests/abc144/tasks/abc144_b

n = gets.chomp.to_i

count = 0

(1..9).each do |a|
  if a <= n
    (1..9).each do |b|
      if a * b == n
        count =+ 1
      end
    end
  end
end

if count > 0
  puts 'Yes'
else
  puts 'No'
end