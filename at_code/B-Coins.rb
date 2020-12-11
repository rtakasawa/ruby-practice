# 入力値を取得します。
a,b,c,x = 4.times.map{gets.to_i}

# 回数をカウントするので定義しておく。
count = 0

# eachメソッドを使って0から全ての場合を試していきます。
(0..a).each do |i|
  # x以下なら下に進む
  if 500 * i <= x
    (0..b).each do |j|
      if 500 * i + 100 * j <= x
        (0..c).each do |k|
          if 500 * i + 100 * j + 50 * k == x
            count += 1
          end
        end
      end
    end
  end
end

puts count

