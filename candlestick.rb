numbers = Array.new
maxs = Array.new
mins = Array.new

while line = gets
  numbers << line.split
end

daysx2 = numbers[0][0].to_i
length = numbers.length - 1

i = 1
length.times do
  maxs << numbers[i][2].to_i
  i += 1
end

i = 1
length.times do
  mins << numbers[i][3].to_i
  i += 1
end


first = numbers[1][0].to_i
final = numbers[daysx2][1].to_i

max = maxs.max
min = mins.min

puts "#{first} #{final} #{max} #{min}"



#### ローソク足の問題 ####