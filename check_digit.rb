
nums = Array.new
#番号を入れるための配列を作成

while line = gets
  nums << line.split
  #配列に与えられた数値を入れる
end

k = 1
#数列を指定するための変数kを定義
lines = nums[0][0].to_i
#数列の数を変数linesに代入

#数列の中の数値全てに処理を適用する
lines.times do
  ###奇数の処理###
  i = 1
  #数列の中の数値を指定する変数iの定義
  kisu = 0
  #奇数の合計値を入れるための変数kisuの定義
  7.times do
    k_num = nums[k][0][i, 1].to_i
    #加算する奇数をk_numに代入
    kisu += k_num
    #変数kisuにk_numを代入
    i += 2
    #次の奇数値を指定できるようiに2を加算
  end
  
  ###偶数の処理###
  i = 0
  #変数iを奇数用に初期化
  gusu = 0
  #偶数の倍の値を入れる変数gusuの定義
  8.times do
    g_nums = nums[k][0][i, 1].to_i * 2
    
    if g_nums >= 10
    #偶数値の倍の値が10以上の数になる場合
      n10 = g_nums.to_s[0, 1].to_i
      #変数g_numの10の位を変数n10に代入
      n1 = g_nums.to_s[1, 1].to_i
      #変数g_numの1の位を変数n1に代入
      g_nums = n10 + n1
      #変数g_numsに変数n10と変数n1の合計値を代入
    end
      
    gusu += g_nums
    #変数gusuにg_numを代入
    i += 2
    #次の奇数値を指定できるようiに2を加算
  end
      
  sum = gusu + kisu
  #偶数値の合計値と奇数値の倍の合計値を変数sumに代入
  sum_keta = sum.to_s.length - 1
  #変数sumの桁数を変数sum_ketaに代入
  sum1 = sum.to_s[sum_keta, 1].to_i
  #変数sumの1の位の数を変数sum1に代入

  if sum1 == 0
  #変数sum1が0の場合
    x = 0
    #答えの値を代入する変数xに0を代入
  else
  #変数sum1が0でない場合
    x = 10 - sum1
    #答えの値を代入する変数xに10 - sum1を代入する
    #10になるための値が変数xの答えになる
  end

  puts x
  #答えの値を表示
  k += 1
  #変数kに1を加算
  #次の数列に移動
end