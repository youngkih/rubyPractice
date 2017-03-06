class Prob11
  
  attr_accessor :fileName, :arr, :max
  
  def initialize(fileName)
    @fileName = fileName
    @arr = Array.new()
    @max = 0
    @size = 20
  end
  
  
  def fileRead()
    File.open(@fileName, "r") do |file|
      while line = file.gets
        @arr.push(line.split(' '))
      end
    end     
  end
  
  
  def findMaxinRow()
    i = 0 
    j = 0 
    tmp = 0
    for i in 0..19
      for j in 0..16
        product = 1
        for k in 0..3
          product *= arr[i][j+k].to_i
          if product > @max 
            @max = product
            tmp = arr[i][j+k].to_i
          end
        end
      end
    end
    puts "max is : #{max} and tmp is #{tmp}"   
  end
  
  def findMaxinCol()
    i = 0 
    j = 0 
    tmp = 0
    for i in 0..19
      for j in 0..16
        product = 1
        for k in 0..3
          product *= arr[j+k][i].to_i
          if product > @max 
            @max = product
            tmp = arr[j+k][i].to_i
          end
        end
      end
    end
    puts "max is : #{max} and tmp is #{tmp}"
  end
  
  def findMaxinRightLow()
    i = 0 
    j = 0 
    tmp = 0
    for i in 0..16
      for j in 0..16
        product = 1
        for k in 0..3
          product *= arr[i+k][j+k].to_i
          if product > @max 
            @max = product
            tmp = arr[i+k][j+k].to_i
          end
        end
      end
    end
    puts "max is : #{max} and tmp is #{tmp}"   
  end
  
  def findMaxinLeftLow()
    i = 0 
    j = 0 
    tmp = 0
    for i in 0..16
      for j in 3..19
        product = 1
        for k in 0..3
          product *= arr[i+k][j-k].to_i
          if product > @max 
            @max = product
            tmp = arr[i+k][j-k].to_i
          end
        end
      end
    end
    puts "max is : #{max} and tmp is #{tmp}"   
  end
  
end


p = Prob11.new("input2.txt")
p.fileRead()
puts "#{p.arr}"

puts p.findMaxinRow()
puts p.findMaxinCol()
puts p.findMaxinRightLow()
puts p.findMaxinLeftLow()
