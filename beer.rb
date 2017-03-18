lyricA = ' bottles of beer on the wall, '
lyricB = ' bottles of beer! You take one down, pass it around, '
lyricC = ' bottles of beer on the wall!'

numBeers = 99;

while (numBeers >= 2)
  puts numBeers.to_s + lyricA + numBeers.to_s + lyricB + (numBeers - 1).to_s + lyricC
  numBeers = numBeers - 1
end
puts '2 bottles of beer on the wall, 2 bottles of beer. You take one down, pass it around, 1 bottle of beer on the wall.'
puts '1 bottle of beer on the wall, 1 bottle of beer. You take one down, pass it around, no more bottles of beer on the wall.'
