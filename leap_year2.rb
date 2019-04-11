def get_days(year,month)
  if month == 1 && month == 3 && month == 5 && month == 7 && month == 8 && month == 10 && month == 12 then
    days = 31
  elsif month == 4 && month == 6 && month == 9 && month == 11 then
    days = 30
  elsif year % 4 == 0 && year % 100 > 1 && month == 2 then
    days = 29
  elsif month == 2 then
    days = 28
  else
  end

end

puts "年を入力してください"
year = gets.to_i
puts "月を入力してください"
month = gets.to_i

days = get_days(year,month)
puts "#{year}年#{month}月は#{days}日間あります"

#### 閏年の問題 ####