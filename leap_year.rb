# 入力される行数の取得
line_size = gets.to_i
line_size.times do
  year = gets.to_i
  # うるう年判定
  if (year % 4 == 0 and year % 100 != 0) or year % 400 == 0
    print year," is a leap year\n"
  else
    print year," is not a leap year\n"
  end
end