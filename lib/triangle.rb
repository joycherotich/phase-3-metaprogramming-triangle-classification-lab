
class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
    validate_triangle
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  private

  def validate_triangle
    if a <= 0 || b <= 0 || c <= 0 || (a + b <= c) || (b + c <= a) || (a + c <= b)
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end