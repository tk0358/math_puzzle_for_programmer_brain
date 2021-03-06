# ループしているかチェック
def is_loop(n)
  # 最初は３を欠けて１を足す
  check = n * 3 + 1
  # 1になるまで数字を変化させることを繰り返す
  while check != 1
    check = check.even? ? check / 2 : check * 3 + 1
    return true if check == n
  end
  return false
end

# 2~10000まで、偶数についてチェック
puts 2.step(10000, 2).count{|i|
  is_loop(i)
}
