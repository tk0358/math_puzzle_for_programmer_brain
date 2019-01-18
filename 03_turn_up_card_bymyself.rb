# 正解ではあるが解答例参照
# 正解ではカードの表裏をtrue,falseで実装

cards = Array.new(101){-1}
(2..100).each do |i|
  j = i
  while j <= 100
    cards[j] *= -1
    j += i
  end
end

count = 0
(1..100).each do |i|
  if cards[i] == -1
    p i
  end
end
