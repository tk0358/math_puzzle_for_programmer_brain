# 合っていた
# 解答は再帰を使っているので参照

def cut_bar(n, m)
  count = 0
  people = 1
  cut_num = n - 1
  while (cut_num > 0)
    cut_num -= people
    count += 1
    if people < m
      people += 1
    end
  end
  count
end

p cut_bar(8, 3)
p cut_bar(20, 3)
p cut_bar(100, 5)
