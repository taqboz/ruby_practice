def solution(m, n)
	x = 0
	#答えの入る変数xを定義
	#i = m
	#↑引数の値を変更したくないから書いたけど不要かも？

	while m <= n do
	#n, n+1, … , m-1, m
		x = x ^ i
		#bitXOR(bit演算子)で同じ位置のbitを比較
		#例：
		#  1 XOR 1 = 0, 0 XOR 0 = 0
		#  1 XOR 0 = 1, 0 XOR 1 = 1

		m += 1
		#iに1を足して代入
	end
	return x
	#変数xを答えとして返す
end 

puts solution(5, 8)