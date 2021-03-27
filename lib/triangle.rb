class Triangle

  attr_accessor :sideA, :sideB, :sideC, :kind

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind 
    if sideA + sideB <= sideC || sideB + sideC <= sideA || sideA + sideC <= sideB || sideA * sideB * sideC == 0
        begin
          raise TriangleError
        end
    elsif @sideA == @sideB && @sideB == @sideC
      self.kind = :equilateral
    elsif sideA == sideB || sideB == sideC || sideA == sideC
      self.kind = :isosceles
    else
      self.kind = :scalene
    end

  end


  class TriangleError < StandardError
    def message
      puts "not a triangle"
    end
    
  end
end
