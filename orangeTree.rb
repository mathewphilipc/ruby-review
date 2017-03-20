class OrangeTree
  def initialize
    @age = 0
    @numOranges = 0
    @height = 0
  end

  def checkAge
    @age
  end

  def countTheOranges
    @numOranges
  end

  def oneYearPasses
    @age = @age + 1
    if (@age >= 3)
      @numOranges = @numOranges + 5
    end
  end

  def pickAnOrange
    @numOranges = @numOranges - 1
  end

end

puts 'New tree!'
myTree = OrangeTree.new
puts 'Age: ' + myTree.checkAge.to_s
puts 'Number of oranges: ' + myTree.countTheOranges.to_s
myTree.oneYearPasses
puts 'One year older'
puts 'Age: ' + myTree.checkAge.to_s
puts 'Number of oranges: ' + myTree.countTheOranges.to_s
myTree.oneYearPasses
puts 'One year older'
puts 'Age: ' + myTree.checkAge.to_s
puts 'Number of oranges: ' + myTree.countTheOranges.to_s
myTree.oneYearPasses
puts 'One year older'
puts 'Age: ' + myTree.checkAge.to_s
puts 'Number of oranges: ' + myTree.countTheOranges.to_s
myTree.oneYearPasses
puts 'One year older'
puts 'Age: ' + myTree.checkAge.to_s
puts 'Number of oranges: ' + myTree.countTheOranges.to_s
puts 'Now pick one orange'
myTree.pickAnOrange
puts 'Number of oranges: ' + myTree.countTheOranges.to_s



