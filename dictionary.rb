attrs = Array.new

while line = gets
  attrs << line.split
end

num = attrs[0][0].to_i
index = attrs[0][1].to_i
pages = num / index + 1

viewed_page = attrs[0][2].to_i

words = attrs[1]
words = words.sort{|a,b|a.downcase <=> b.downcase}

show = Array.new
i = index * (viewed_page - 1)
index.times do
  show << words[i]
  i += 1
end
  
puts show


#### 辞書作成の問題 ####