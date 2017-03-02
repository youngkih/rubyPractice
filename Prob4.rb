class Palin
  
  attr_accessor :input
 
  def initialize()
    
  end
  
  def isPalin(input)  # deciding whether 'input' is palindrome or not
    @input = input
    n = @input
    reverse = 0
    while @input >0 
      digit = @input%10
      reverse = reverse*10 + digit
      @input = @input/10
    end
    
    if reverse == n  #palindrome
      return 1
    else  #not palindrome
      return 0
    end
      
  end
  
  def getPalin()
    i = 0
    j = 0
    max = 0
    while i < 999
      while j <999
        input = (999-i) * (999-j)
        if isPalin(input) == 1 && input > max     #if 'input' is larger than the former palindrome
          max = input
          puts input
        end
        j += 1
      end
      i+=1
      j=0
    end
  end
  
  
  
end

p = Palin.new()
puts p.getPalin()
