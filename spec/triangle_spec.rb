require('rspec')
require('triangle')

describe('Triangle') do
  describe('#equilateral?') do
    it('states when a three given sides form an equilateral triangle') do
      triangle = Triangle.new(2, 2, 2)
      expect(triangle.equilateral?()).to(eq(true))
    end

    it('states when a triangle is not equilateral') do
      triangle = Triangle.new(2, 2, 3)
      expect(triangle.equilateral?()).to(eq(false))
    end
  end

  describe('#isosceles?') do
    it('states when given sides form an iscosceles triangle') do
      triangle = Triangle.new(2, 2, 3)
      expect(triangle.isosceles?()).to(eq(true))
    end

    it('states when a triangle is not an iscosceles') do
      triangle = Triangle.new(2, 3, 4)
      expect(triangle.isosceles?()).to(eq(false))
    end
  end

  describe('#scalene?') do
    it('states when given sides form a scalene triangle') do
      triangle = Triangle.new(1, 2, 3)
      expect(triangle.scalene?()).to(eq(true))
    end

    it('states when a triangle is not scalene') do
      triangle = Triangle.new(2, 2, 2)
      expect(triangle.scalene?()).to(eq(false))
    end
  end

  describe('#triangle?') do
    it('states when values do not create triangle') do
      triangle = Triangle.new(8, 2, 2)
      expect(triangle.triangle?()).to(eq(false))
    end

    it('states when values create triangle') do
      triangle = Triangle.new(1, 2, 3)
      expect(triangle.triangle?()).to(eq(TRUE))
    end

  end

  describe('#triangle_type') do
    it('returns the type of the triangle when it\'s equilateral') do
      triangle = Triangle.new(2, 2, 2)
      expect(triangle.get_type()).to(eq("Equilateral"))
    end

    it('returns the type of the triangle when it\'s isosceles') do
      triangle = Triangle.new(3, 2, 2)
      expect(triangle.get_type()).to(eq("Isosceles"))
    end

    it('returns the type of the triangle when it\'s scalene') do
      triangle = Triangle.new(2, 1, 3)
      expect(triangle.get_type()).to(eq("Scalene"))
    end
  end
end
