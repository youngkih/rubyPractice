class Prob5
  
  attr_accessor :result
  attr_accessor :max
  def initialize()
    @result = Array.new()   # @result is an array of prime numbers
    @max = 0  # square number of prime numbers
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
      end
      j+=1
    end
    
  end



  def max(n, input)   # calculating the square number of prime numbers
    i=0
    while i < input
       if n**i < input
         @max = i
       end
       i+=1
    end
    
    return @max
  end 
  
   
end


p = Prob5.new()
p.primeNum(20)  # 20 : 2, 3, 5, 7, 11, 13, 17, 19

i=0
sum = 1
while i<p.result.length   
  tmp = p.result[i]
  sum *= tmp ** p.max(tmp,20)
  i += 1
end

puts sum  # sum : 2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19
