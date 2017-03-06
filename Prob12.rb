class Prob12
  
  
  def initialize()
  end
  
  def findResult()
    
    n = 1
    while true     
      trigNum = (n*(n+1))/2
      count = 0
      for i in 2..Math.sqrt(trigNum)
      
        if trigNum % i== 0
          count += 2
        end 
        if trigNum/i == i
          count -= 1
        end
        if count >= 500
          puts "n : #{n} , trigNum : #{trigNum}"
          return
        end      
      end
      n+=1
    end
    
  end
  
  
end


p = Prob12.new()

p.findResult()
