class Prob10
  
  attr_accessor :result, :sum
  
  def initialize()
    @result = Array.new()   # @result is an array of prime numbers
    @sum = 0
  end
  
  
  def primeNum(input)   # calculating an array of prime numbers smaller than the 'input'
    isPrime = Array.new(input, true)
    
    isPrime[0] = false
    isPrime[1] = false
    
    i = 2
    
    while i < input
      mult = 2
      while i*mult <input
        isPrime[i*mult] = false
        mult += 1
      end
      i += 1
    end
    
    j = 0
    while j<input
      if isPrime[j] == true
        @result.push(j)
        @sum += j
      end
      j+=1
    end
    
  end

  
   
end


p = Prob10.new()
p.primeNum(2000000)  

puts "#{p.sum}"
