# Fizz_Buzz問題

def fizz_buzz
  num = 1

  while num < 100 do

    if num % 3 == 0 then
      puts "Fizz"
    elsif num % 5 == 0 then
      puts "Buzz"
    elsif num % 3 == 0 && num % 5 == 0 then
      puts"Fizz_Buzz"
    else
      puts num
    end

    num = num + 1
  end
end