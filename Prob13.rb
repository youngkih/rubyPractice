class Prob13
  
  attr_accessor :fileName, :inputArr, :sum
  
  def initialize(fileName)
    @fileName = fileName
    @inputArr = Array.new()
    @sum = 0
  end
  
  def fileRead()  #file Open
    File.open(@fileName, "r") do |file|
      while line = file.gets
        @inputArr.push(line)
      end
    end
  end
  
  def sum() #Sum all of the numbers
    for i in 0..99
      @sum += @inputArr[i].to_i
    end
    return @sum
  end
  
  def printFirstTen()
    digits = Array.new
    while @sum != 0 do
      @sum, tmp = @sum.divmod(10) #divide @sum into 10 and the @sum will be quotient and tmp will be the rest 
      digits << tmp #put tmp into array 'digits'
    end
    digits = digits.reverse
 
    lastSum = 0
    for i in 0..9
      lastSum *= 10
      lastSum += digits[i]
    end
    puts "#{lastSum}"
  end
    
end


p = Prob13.new("input3.txt")
p.fileRead()
p.sum()
p.printFirstTen()
