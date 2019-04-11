attrs = Array.new

while line = gets
  attrs << line.split
end

homeToPaiza = attrs[0][0].to_i
paizaToGino = attrs[0][1].to_i
ginoToOffice = attrs[0][2].to_i

times = 9 * 60
paizaToOffice = times - paizaToGino - ginoToOffice

trainLines = attrs[1][0].to_i


notLate = Array.new

i = 2
trainLines.times do
  trainTime = attrs[i][0].to_i * 60 + attrs[i][1].to_i
  if  paizaToOffice - trainTime > 0
      notLate << trainTime
  end
  i += 1
end

lastTrain = notLate.max - homeToPaiza
lastHour = sprintf("%02d",lastTrain / 60)
lastMins = sprintf("%02d",lastTrain % 60)


puts "#{lastHour}:#{lastMins}"



#### 最遅出社時間の問題 ####