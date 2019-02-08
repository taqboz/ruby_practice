# 自分の得意な言語で
# Let's チャレンジ！！

nums = Array.new

while line = gets
  nums << line.split
end

k = 1
nums[0][0].to_i.times do
    i = 1
    kisu = 0
    7.times do
      k_nums = nums[k][0][i, 1].to_i
      kisu += k_nums
      i += 2
    end
    
    i = 0
    gusu = 0
    8.times do
      g_nums = nums[k][0][i, 1].to_i * 2
      
      if g_nums >= 10
        n10 = g_nums.to_s[0, 1].to_i
        n1 = g_nums.to_s[1, 1].to_i
        g_nums = n10 + n1
      end
      
      gusu += g_nums
      i += 2
    end
    
    #偶数値と奇数値を合算
    sum = gusu + kisu
    sum_keta = sum.to_s.length - 1
    #合計の1の位を取ってくる
    sum1 = sum.to_s[sum_keta, 1].to_i
    
    if sum1 == 0
      x = 0
    else
      x = 10 - sum1
    end
    
    
    puts x
    k += 1
end

