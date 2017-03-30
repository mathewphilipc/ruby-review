def fibSum strictMax
  sum = 0
  curr = 1
  prev = 0
  nextTerm = 1
  while (curr < strictMax)
    if (curr%2==0)
      sum = sum + curr
    end
    prev = curr
    curr = nextTerm
    nextTerm = curr + prev
  end
  return sum.to_s
end

puts 'The sum of all even Fibonacci numbers under 4,000,000 is ' + (fibSum 4000000) + '.'
