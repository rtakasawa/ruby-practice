input = gets.chomp.to_i
input_first = (input / 1) % 10 #1の位の数
input_second = (input / 10) % 10 #10の位の数
input_third = (input / 100) % 10 #100の位の数
print sum = input_first + input_second + input_third
