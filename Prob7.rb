class Prob7
  
  attr_accessor :input
  attr_accessor :primeArr
  
  def initialize(input)
    @input = input
    @primeArr = Array.new()
    @primeArr.push(2) # 2 is the smallest prime number
    @isPrime = Hash.new() # |key,value| = |number, prime or composite|
  end
  
  
  def getPrime()
    
    num = 3
    
    while @primeArr.size() <= @input  # repeat until we find the 10001st prime number
      div =2
      while div < num
        if num%div == 0
          @isPrime[num] = false
          break
        else
          @isPrime[num] = true
        end
        div += 1
      end  
      
      if @isPrime[num] == true
        @primeArr.push(num)
      end
          
      num+=1
    end
      
    puts "#{primeArr[@input-1]}"
    
  end
  
  
  
end

p = Prob7.new(10001)
p.getPrime()
# puts "#{p.primeArr}"
