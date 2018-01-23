class Triangle
  attr_accessor :value1, :value2, :value3

  def initialize(value1, value2, value3)
    @value1 = value1
    @value2 = value2
    @value3 = value3
  end

  def kind
    validate_triangle
    if @value1 == @value2 &&   @value2 == @value3
       :equilateral
    elsif @value1 == @value2 ||   @value2 == @value3  ||  @value1 == @value3
       :isosceles
    else
       :scalene
    end
  end

  def validate_triangle
    if (value1 + value2 > value3 && value2 + value3 > value1 && value2 + value3 > value1)
          valid_triangle = [value1, value2, value3].collect {  |value| "false" if value <= 0 }
            puts valid_triangle
            if valid_triangle.include?(false)
              begin
                raise TriangleError
              end
            end
    end
  end
end

class TriangleError < StandardError
#  def message
#    "Cant create triangle with parameter passed"
#  end
end

triangle = Triangle.new(1,1,-3)
triangle.kind
#triangle1 = Triangle.new(7,3,1)
#triangle1.kind
#triangle2 = Triangle.new(4,1,2)
#triangle2.kind
#triangle2 = Triangle.new(0,0,0)
#triangle2.kind
