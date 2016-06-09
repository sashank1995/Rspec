class Triangle

  attr_accessor :type

  def initialize(a,b,c)

    if valid?(a,b,c)
      if (a == b) && (b == c)
        @type = :equilateral
      elsif (a == b) || (b == c) || (a == c)
        @type = :isoceles
      else
        @type = :scalene
      end
    else
      @type = :invalid
    end
  end

  private

  def valid? (a, b, c)
    return false if (a ==0 || b == 0 || c == 0)

    return false if (a < 0 || b < 0 || c < 0)

    return false if (a + b <= c ||
                     a + c <= b ||
                     b + c <= a)

    return true
  end

end
