class Fibo
  attr_accessor :sum
  attr_accessor :fib
  
  def initialize()
    @sum = 0 
    @fib = Array.new()  #Array will be filled with 'nil' as default
    
    n = 0
    while fibo_sum(n)<4000000
      n+=1
      # puts "result : #{fibo_sum(n)}"  
    end
    
  end  
  
  def fibo_sum(n)
    return n if n <= 1
    
    if @fib[n] != nil
      return @fib[n]
    else
  
      @fib[n] =  (fibo_sum(n-1) + fibo_sum(n-2))
      
      if @fib[n] %2 == 0 
        @sum += @fib[n]  
      end
    
      return @fib[n]
    end
    
    
  end
 
  
  
end

fb = Fibo.new()
# puts fb.fibo_sum(12)
puts "sum : #{fb.sum}"


