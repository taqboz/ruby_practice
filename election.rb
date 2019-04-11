attrs = Array.new
while line = gets
  attrs << line.chomp.split
end

r = attrs[0][0].to_i + 1
y = attrs[0][1].to_i
k = attrs[0][2].to_i

rikkouho = Array.new

i = 0 
r.times do
 if i == 0 then
   rikkouho[i] = y
 else
   rikkouho[i] = 0
 end
 i += 1
end

i = 0
k.times do
  x = 0
  en = attrs[i + 1][0].to_i
  #演説の番号を繰り返し取り出す(en)
  r.times do
    #立候補者の数だけ繰り返す
    if rikkouho[x] > 0  then
      rikkouho[x] -= 1
      rikkouho[en] += 1
    end
    x += 1
  end
i += 1

end



rikkouho.delete_at(0)
answer = rikkouho.index(rikkouho.max) + 1

another = Array.new

i = 0
r.times do
  if answer - 1 != i
    if rikkouho[i] == rikkouho.max
      another << i + 1
    end
  end
  i += 1
end


puts answer
puts another



#### 選挙地区の問題 ####