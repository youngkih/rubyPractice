class Practice
  attr_accessor :i
  attr_accessor :j
  attr_accessor :k
  
  
  def initialize(input)
    @input = input
    @i = 3
    @j = 5
    @k = 15
    @sum=0
  end
  
  
  
  def getSum()
    
   while @i<@input
     @sum += @i
     @i += 3
     
   end
   
   while @j<@input
     @sum += @j
     @j += 5
   end

    while @k<@input
     @sum -= @k
     @k += 15
   end
   
   puts "sum : #{@sum}"
    
  end
  
  
  
  
end

p = Practice.new(1000)
p.getSum()
