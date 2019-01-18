# 左から順番に処理するということは、「すでに通過した部分については反転しない」と言い換えれる

(1..100).each do |i|
  flag = false
  (1..100).each do |j|
    if i % j == 0
      flag = !flag
    end
  end
  puts i if flag
end
