#解答例の１つ目とほぼ同じ
#拡張性のある解答例の２つ目、３つ目を参照（特に２）

def exchange(sum, count)
  m_500 = (sum/500 < count) ? sum/500 : count
  m_100 = (sum/100 < count) ? sum/100 : count
  m_50 = (sum/50 < count) ? sum/50 : count
  m_10 = (sum/10 < count) ? sum/10 : count

  check = 0

  0.upto(m_500) do |c_500|
    0.upto(m_100) do |c_100|
      0.upto(m_50) do |c_50|
        0.upto(m_10) do |c_10|
          if c_500 + c_100 + c_50 + c_10 <= count
            if 500*c_500 + 100*c_100 + 50*c_50 + 10*c_10 == sum
              check += 1
            end
          end
        end
      end
    end
  end
  check
end

p exchange(1000, 15)
