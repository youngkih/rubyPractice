class Prob6
  attr_accessor :n
  attr_accessor :maxNum
  
    # HOW TO SOLVE
    # (1+2+3+4+...n)^2 - 1^2 - 2^2 - 3^2 - 4^2 -...- n^2
    # = 1(2+3+4...+n) + 2(1+3+4+..n) + ... + n(1+2+...n-1)  
  
  def initialize(maxNum)
    @maxNum = maxNum
  end
  
  def getSum(n)
    sum = (@maxNum*(@maxNum+1))/2 - n   # arithmetic progression formula : 1+2+3...+n = n(n+1) /2
    return sum
  end
  
  def getResult()
    i = 1
    sum = 0 
    
    while i <= @maxNum
      tmp = i * getSum(i)
      i += 1
      sum += tmp
    end
    puts sum
  end
  
  
end

p = Prob6.new(100)
p.getResult()
