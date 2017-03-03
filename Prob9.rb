class Prob9
  
  def initialize()
  end
  
  def test()
   
    for a in 1..1000
      for b in a+1..1000
        c = 1000-a-b
        if a**2+b**2 == c**2
          puts a*b*c
          return
        end
      end
    end   
    
  end
  
  
end

p = Prob9.new()
p.test()
