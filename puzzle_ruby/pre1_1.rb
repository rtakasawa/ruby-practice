M, N = 6, 6

def check(remain, pre)
  # 配置する人がいなくなると終了
  return 0 if remain < 0
  return 1 if remain == 0

  cnt = 0
  pre.upto(M) do |i| # テーブルに配置する人数
    binding.irb
    cnt += check(remain - i, i)
  end
  cnt
end

puts check(N, 2)

# def fact(n)
#   return 1 if n == 0
#   n * fact(n - 1) # これが返り値となる。 ローカル変数は関数呼び出し毎に新しく生成される。
# end

# p fact(4)