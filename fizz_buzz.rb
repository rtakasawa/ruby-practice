puts '数字を入力してください'

fizz_buzz = gets.to_i

if fizz_buzz % 3 == 0
  puts 'Fizz'
elsif fizz_buzz % 5 == 0
  puts 'Buzz'
elsif fizz_buzz % 15 == 0
  puts 'FizzBuzz'
else
  puts fizz_buzz.to_s
end