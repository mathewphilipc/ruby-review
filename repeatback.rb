intro = 'Welcome to the sorting repeatback machine!'
instruction = 'Enter a phrase to add it to the list, or enter a blank to terminate'


puts intro
input = 'default input'

collected = [];
while input != ''
  puts instruction
  input = gets.chomp
  if input != '' 
    collected.push(input)
  else
    puts('Thanks for playing!')
  end
end
puts ('You entered: ')
puts collected.to_s
puts ('In alphabetical order: ')
sortedCollected = collected.sort
puts sortedCollected.to_s
