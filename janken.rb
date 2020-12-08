require 'byebug'

# 自分のじゃんけんの手
class Player
  def hand
    puts "数字(半角)を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    # chomp:改行を取り除く
    player_hand = gets.chomp

    # while:trueの時に条件を繰り返す
    # player_handが1文字以上の場合は再入力
    # player_handが1文字でも、半角012以外の場合は再入力
    # /[012]/
    # //は正規表現ですよの意味
    # [012]は012のいずれか1文字
    while player_hand.size > 1 || player_hand.match(/[012]/).nil?
      puts "不正な入力。数字(半角)を入力してください。"
      puts "0:グー, 1:チョキ, 2:パー"
      player_hand = gets.chomp
    end

    # stringをintegerに変換
    player_hand = player_hand.to_i
  end
end

# 相手のじゃんけんの手
class Enemy
  def hand
    enemy_hand = rand(3)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]

    # 自分と相手の手を出力
    puts <<-EOS
    player_hand:#{janken[player_hand]}
    enemy_hand:#{janken[enemy_hand]}
    EOS

    if player_hand == enemy_hand
      'draw'
    elsif (player_hand == 0 && enemy_hand == 1)||
      (player_hand == 1 && enemy_hand == 2)||
      (player_hand == 2 && enemy_hand == 0)
      'player_win'
    else
      'enemy win'
    end
  end
end

# 自分を作る
player = Player.new

# 相手を作る
enemy = Enemy.new

# じゃんけんを作る
janken = Janken.new

# じゃんけんをする
result = janken.pon(player.hand, enemy.hand)

# あいこの場合
while result == 'draw'
  puts result
  result = janken.pon(player.hand, enemy.hand)
end

puts result
