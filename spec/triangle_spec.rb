require('rspec')
require('triangle')

describe('Triangle') do
  describe('#equilateral?') do
    it('states when a three given sides form an equilateral triangle') do
      triangle = Triangle.new(2, 2, 2)
      expect(triangle.equilateral?()).to(eq(true))
    end
  end
  describe('#isosceles?') do
    it('states when given sides form an iscosceles triangle') do
      triangle = Triangle.new(2, 2, 3)
      expect(triangle.isosceles?()).to(eq(true))
    end
  end
end
