def threeAndFive inputNum
  sum = 0
  currNum = 0
  while currNum < inputNum
    if (currNum%5==0 || currNum%3==0)
      #puts 'Found one: ' + currNum.to_s + ' :)'
      sum = sum + currNum
      #puts 'New sum is ' + sum.to_s + '!'
    end
    currNum = currNum + 1
  end
  return sum
end

puts threeAndFive 1000
