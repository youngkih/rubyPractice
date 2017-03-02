class Prime
  
  attr_accessor :input
  attr_accessor :i
 
  def initialize(input)
    @input = input
    @i = 2
  end
  
  def getPrime()
    
    while @i != @input
      
      if @input % @i == 0 # divide from 2,3,...
        @input = @input/@i
        # puts @i
      end
      
      @i += 1
      
    end
    
    puts "Largest : #{@input}"  # leftover is the largest
    
    
  end
  
end

p = Prime.new(600851475143)
p.getPrime()
