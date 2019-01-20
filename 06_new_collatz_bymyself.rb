# できた
# 解答との違いは、途中で三項演算子を使うかどうか
def even_colluz_check(n)
  num = n * 3 + 1
  while num != 1
    if num % 2 == 0
      num /= 2
    else
      num = num * 3 + 1
    end
    if num == n
      return true
    end
  false
  end
end

count = 0
2.step(10000, 2).each do |i|
  if even_colluz_check(i)
    count += 1
  end
end
p count
