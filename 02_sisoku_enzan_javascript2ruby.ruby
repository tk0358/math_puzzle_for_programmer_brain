#答えられず
#javascriptの解答例を見て作る

# Rubyでは先頭が0で始まる数字は８進数として処理されるので、
# 先頭に0がある場合は除外

op = ["*", ""]
(1000..9999).each do |i|
  c = i.to_s
  op.size.times do |j|
    op.size.times do |k|
      op.size.times do |l|
        val = c[0] + op[j] + c[1] + op[k] + c[2] + op[l] + c[3]
        if val.size > 4
          val = val.split('*').map(&:to_i).join('*') #自分で工夫した箇所*で文字式を分離し、先頭の０を除外するように
          if eval(val) == c.reverse.to_i
            puts i
          end
        end
      end
    end
  end
end
