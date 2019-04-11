input_lines = gets

first = input_lines[0]
second = input_lines[4]
third = input_lines[8]

operator = input_lines[2]

if operator == "+" then
  if first == "x" then
    answer = third.to_i - second.to_i
  elsif second == "x" then
    answer = third.to_i - first.to_i
  elsif third == "x" then
    answer = first.to_i + second.to_i
  end
  
elsif operator == "-" then
  if first == "x" then
    answer = third.to_i + second.to_i
  elsif second == "x" then
    answer = first.to_i - third.to_i
  elsif third == "x" then
    answer = first.to_i - second.to_i
  end
  
end

puts answer



#### 先生の宿題の問題 ####