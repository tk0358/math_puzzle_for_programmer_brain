#正解ではあるが、解答例参照
#reverseを使うともっと簡単に

def judge_palindrome(str)
  0.upto(str.size / 2 - 1) do |i|
    if str[i] != str[-i-1]
      return false
    end
  end
  true
end

#reverseを使ったjudge_palindrome
# def judge_palindrome(str)
#   str == str.reverse
# end

def find_min_pali_more_than_10
  (10..1000).each do |n|
    if judge_palindrome(n.to_s(2)) && judge_palindrome(n.to_s(8)) && judge_palindrome(n.to_s(10))
      return n
    end
  end
end

p find_min_pali_more_than_10
