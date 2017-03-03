class Prob8
  
  attr_accessor :fileName, :arr, :numbers, :q, :adjNum, :max
  
  
  def initialize(fileName)
    @fileName = fileName
    @arr = Array.new()
    @numbers = Array.new()    # array of adjacent numbers
    @q = Array.new()
    @adjNum = 0   # variable for how many adjacent number of digits
    @max = 0
  end
  
  
  def getFile()   # opening file
    File.open(@fileName,"r") do |file|
      file.each_line do |str|
         @arr.push str
         # puts "#{arr}"
      end
    end
  end
  
  def getMaxProduct(adjNum)
    i = 0
    j = 0
    k =0 
    @adjNum = adjNum
    product = 1
    
    
    while i < 20
      while j <50
        
        @numbers.push @arr[i][j].to_i   # converting @arr[i][j] which is string into integer and pushing into @numbers
        @q.push @arr[i][j].to_i
        
        if @q.length > @adjNum
          @q.shift    # @q and @numbers are queue
          @numbers.shift
          product = 1
        end
        
        if @numbers.length == @adjNum   # calculating product of adjacent numbers
          while k < @adjNum 
            product *= @numbers[k]
            k+=1
          end
          k = 0
        end
        
        if @max < product
          @max = product
        end
        
        
        j+=1
      end
      i+=1
      j = 0
    end 
    
    
    
  end
  
  
  
end

p = Prob8.new("input.txt")
p.getFile()
p.getMaxProduct(13)
puts p.max