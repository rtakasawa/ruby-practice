require 'byebug'

class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    player_hand = gets.chomp
    byebug

    while player_hand.class == String || player_hand.to_i > 2
      puts "0〜２の数字を入力してください。"
      player_hand = gets
    end

    puts "ok"
    puts player_hand.to_i

  end
end

class Enemy
  def hand

  end
end

class Janken
  def pon(player_hand, enemy_hand)

    janken = ["グー", "チョキ", "パー"]

  end
end

player = Player.new

enemy = Enemy.new

janken = Janken.new
  next_game = janken.pon(player.hand, enemy.hand)
