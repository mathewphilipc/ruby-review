def betterEnglishNumber number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left = number

  write = left/1000000
  left = left - write*1000000
  if write > 0
    millions = betterEnglishNumber write
    numString = numString + millions + ' million'
    if left > 0
      numString = numString + ' '
    end
  end
  

  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = betterEnglishNumber write
    numString = numString + thousands + ' thousand'
    if left > 0
      numString = numString + ' '
    end
  end
    



  write = left/100 # How many hundreds left to write out?
  left = left - write*100 #subtract off those hundreds

  if write > 0
    hundreds = betterEnglishNumber write
    numString = numString + hundreds + ' hundred'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write==1) and (left>0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left = 0

  if write>0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts 'How to spell the numbers 1, 12, 123, ..., through 123,456,789:'
puts
puts betterEnglishNumber (1)
puts
puts betterEnglishNumber (12)
puts
puts betterEnglishNumber (123)
puts
puts betterEnglishNumber (1234)
puts
puts betterEnglishNumber (12345)
puts
puts betterEnglishNumber (123456)
puts
puts betterEnglishNumber (1234567)
puts
puts betterEnglishNumber (12345678)
puts
puts betterEnglishNumber (123456789)
