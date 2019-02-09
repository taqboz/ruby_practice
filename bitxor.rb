def solution(m, n)
  x = 0
  #答えの入る変数xを定義

  while m <= n do
  #n, n+1, … , m-1, m
    x = x ^ m
    #bitXOR(bit演算子)で同じ位置のbitを比較
    m += 1
    #iに1を足して代入
  end
  
  return x
  #変数xを答えとして返す
end 

puts solution(5, 8)


#### bitXORの問題 ####

  # bitXOR
  #  1 XOR 1 = 0, 0 XOR 0 = 0
  #  1 XOR 0 = 1, 0 XOR 1 = 1
  # 例
  #  3 XOR 4
  #  3 = 101
  #  4 = 100
  #  x = 001

  # 今回の条件
  #  m <= n
  #  n, m < 1000000000
  #  x = m XOR m+1 XOR …　n-1 XOR n

  # テストケース
  #  5 XOR 6 XOR 7 XOR 8 XOR =
  #  3 XOR 15 =
  #  12
  
#####################