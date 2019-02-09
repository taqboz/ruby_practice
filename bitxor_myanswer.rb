def solution(m, n)

### 10進法 → 2進法 ###

  bits = Array.new
  #2進数を入れるための配列を定義
  subst = m
  #substitute（引数mの代理）

  while subst <= n do
  #n, n+1, … , m-1, mの全てにおいて以下の処理を行う
    digit = 1
    #digit（数字の位）
    conv = subst
    #conversion（変換）
    bit = 0
    #2進数に変換後の数を代入する変数

    while conv > 0
      #bit = conv.to_s(2)
      bit += conv % 2 * digit
      #2で割って位に1か0を代入
      
      #次の位に移行
      conv = conv / 2		
      digit = digit * 10
    end

    bits << bit.to_s
    #比較的出来るように演算子を整えてString型で配列に追加
    #2進数に変換後の数字を配列bitに代入
    subst += 1
    #次の数字へ（n → n + 1）
  end


### bitXORの演算処理 ###

  i = 0
  subst = m
  #引数mの代理変数substの再定義
  x = 0.to_s
  #XORで比較するための

  while subst <= n do
    xors = Array.new
    #演算結果の配列xors
    xor_bit = bits[i]
    #bit比較、演算する変数xor_bit
    r_num = 1
   #文字の位置の変数r_num

  ## 比較処理 ##
  ## 前提としてxの桁数はxor_bitの桁数を超えない ##
  while r_num <= xor_bit.length
    #xor_bitの桁数の回数以下の処理を行う
    if r_num <= x.length
      #xの桁数内で以下の処理を実行
      if x[-(r_num), 1] == xor_bit[-(r_num), 1]
      #xとxor_bitのr_num番目のbitが同じ場合
        xors << "0"
        #配列xorsに"0"を代入
      else
      #xとxor_bitのbitが違う場合
        xors << "1"
        #配列xorsに"1"を代入
      end
    else
      #xの桁数を超えた場合
      xors << xor_bit[-(r_num), 1]
      #xor_bitの文字列を配列xorに代入
    end

    r_num += 1
    #次の文字に移行
  end

  ## 配列から文字列へ複号する処理 ##
  str = ""
  #空の文字列xorを定義
  xors.each do |xor|
    str = xor + str
    #文字列strにxorの内容を左に入れていくことで演算結果を文字列として作成
  end

  x = str
  #演算結果をxに代入

  i += 1
  subst += 1
  end


### 2進法 → 10進法 ###

  i = 1
  digit = 1
  #digit（数字の位）
  answer = 0
  #xを10進法に直した

  x.length.times do
    #xの桁数分以下の処理を実行
    answer += x[-(i), 1].to_i * digit
    #10進法の数に直した各位の数値をanswerに代入
    i += 1
    digit = digit * 2
  end

  return answer
end

puts solution(5, 8)