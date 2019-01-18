#表向きのカードをtrue、裏向きのカードをfalseとする

# カードの初期化
N = 100
cards = Array.new(N, false)

# 2～100まで裏返す
(2..N).each do |i|
  j = i -1
  while (j < cards.size)
    cards[j] = !cards[j]
    j += i
  end
end

# 裏向きのカードを出力
N.times do |i|
  puts i + 1 if !cards[i]
end
