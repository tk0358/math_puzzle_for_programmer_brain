# 再帰を使って
@cnt = 0
def change(target, coins, usable)
  coin = coins.shift
  if coins.size == 0
    @cnt += 1 if target / coin <= usable
  else
    (0..target/coint).each do |i|
      change(target - coint * i, coins.clone, usable - i)
    end
  end
end

change(1000, [500, 100, 50, 10], 15)
puts @cnt
