sum = 0

puts <<~TEXT
 旅行プランを選択してください
 1. 沖縄旅行 (¥10,000)
 2. 北海道旅行 (¥20,000)
 3. 九州旅行 (¥15,000)
 プランを選択
TEXT

plan = gets.chomp.to_i

case plan
when 1
  sum = sum + 10000
  puts "沖縄旅行ですね。何人で行きますか？"
when 2
  sum = sum + 20000
  puts "北海道旅行ですね。何人で行きますか？"
when 3
  sum = sum + 15000
  puts "九州旅行ですね。何人で行きますか？"
end

traveler = gets.to_i
cost = sum * traveler

if traveler.to_i >= 5
  puts "5人以上なので10%割引となります"
  puts "合計金額："
  puts cost.to_i * 0.9
else
  puts "合計金額：#{cost}"
end
