# 勇者のHP
brave_hp = 30
# 勇者の攻撃力
brave_attack = 10
# 勇者の防御力
brave_defense = 5
# 的のHP
enemy_hp = 30
# 的の攻撃力
enemy_attack = 5
# 敵の防御力
enemy_defense = 10

#攻撃にランダム要素をいれる
#範囲オブジェクト 　3..5

# rand(4)にすると0〜３のうちランダムに数字を発生させる
select_attack = rand(4)

if select_attack == 0
  puts "会心の一撃"
  #randの範囲を２０〜３０と大きな値にする
#的に与えるダメージの計算
enemy_damage = brave_attack - enemy_defense + rand(20..30)

# 敵のHPにダメージを与える
enemy_hp = enemy_hp - enemy_damage
else
  puts "通常攻撃"
  #的に与えるダメージの計算
  enemy_damage = brave_attack - enemy_defense + rand(3..5)
end

  # 敵のHPにダメージを与える
  enemy_hp = enemy_hp - enemy_damage

puts <<~text
敵に#{enemy_damage}のダメージを与えた
残りのHPは#{enemy_hp}だ。
text


if enemy_hp > 20
  puts "敵は元気だ"
elsif enemy_hp > 10
  puts "敵はちょっと弱っている"
elsif enemy_hp > 5
  puts "敵はかなり弱っている"
elsif enemy_hp > 0
  puts "敵は瀕死だ"
else
  puts "敵は死んだ"
end

select_attack = rand(4)

if select_attack == 0
  puts "会心の一撃"
  #randの範囲を２０〜３０と大きな値にする
#的に与えるダメージの計算
brave_damage = enemy_attack - brave_defense + rand(10..20)

# 敵のHPにダメージを与える
brave_hp = brave_hp - brave_damage
else
  puts "通常攻撃"
  #的に与えるダメージの計算
  brave_damage = enemy_attack - brave_defense + rand(3..5)
end

puts <<~text
勇者は#{brave_damage}のダメージを受けた
puts "残りのHPは#{brave_hp}だ。
text

if brave_hp > 20
  puts "勇者は元気だ"
elsif brave_hp > 10
  puts "勇者はちょっと弱っている"
elsif brave_hp > 5
  puts "勇者はかなり弱っている"
elsif brave_hp > 0
  puts "勇者は瀕死だ"
else
  puts "勇者は死んだ"
end
