class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    #valid_triangle
  end

  def kind
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    triangle = []
    [@side1, @side2, @side3].each do |side|
      triangle << false if side <= 0
      raise TriangleError if real_triangle.include?(false)
    end
  end


  class TriangleError < StandardError
  end
end
