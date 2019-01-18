# 再帰
# 切った棒のそれぞれに対して、されに切っていくことをイメージ

def cutbar(m, n, current) # currentは現在の棒の数
  if current >= n
    0 # 切り終えた
  elsif current < m
    1 + cutbar(m, n, current * 2) # 次は現在の２倍になる
  else
    1 + cutbar(m, n, current + m) # はさみの数だけ増加
  end
end

p cutbar(3, 20, 1)
p cutbar(5, 100, 1)
