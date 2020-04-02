class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(arguments)
    arguments.each {|k,v| self.send(("#{k}="), v)}
  end
end
