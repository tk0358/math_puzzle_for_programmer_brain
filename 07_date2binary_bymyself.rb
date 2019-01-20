#間違えた
# 処理結果を見てから、コードを修正して
# 解答例１：日付のフォーマットにstrftimeメソッドを使う、＆
# 文字列をパースしてDateオブジェクトをつくるparseメソッドｗ参考に
# 解答例２では、対象期間を２進数であらした時、左端の４桁が1001で始まっていて、
# すべて２５桁なのを利用
# 解答例２はさらに、有効でない日付を除外するのに、例外処理をうまく使っている。
# 拡張性は解答例１の方がある
require 'date'

from_date = Date.new(1964, 7, 13)
to_date = Date.new(2020, 7, 24)

(from_date..to_date).each do |date|
  year = date.year.to_s
  month = (date.month < 10 ? "0" : "") + date.month.to_s
  day = (date.day < 10 ? "0" : "") + date.day.to_s
  d_day = year + month + day
  b_day = d_day.to_i.to_s(2)
  rev_b_day = b_day.reverse
  rev_b_day_to_10 = rev_b_day.to_i(2).to_s
  if d_day == rev_b_day_to_10
    puts date
  end
end
