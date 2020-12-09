input = gets.chomp.to_i
numbers = gets.chomp.split(" ").map(&:to_i);

count = 0

while numbers.all?{|number| number%2 == 0}
  numbers = numbers.map{|num| num / 2}
  count += 1
end

print count