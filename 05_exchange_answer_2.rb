# repeated_combinationメソッドは、配列の要素から引数n個を選んだときの重複組合せ（順序なし、重複を許す組合せ）を数え上げます。組合せの数だけブロックを繰り返し実行し、ブロック引数arrに組合せを配列で入れます。戻り値はレシーバ自身です。

# inject(:+)で配列の要素の合計を求めることが出来る

coins = [10, 50, 100, 500]
cnt = 0
(2..15).each do |i|
  coins.repeated_combination(i).each do |coin_set|
    cnt += 1 if coin_set.inject(:+) == 1000
  end
end
puts cnt
