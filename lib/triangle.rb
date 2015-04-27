class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:equilateral?) do
    if @a.==(@b) && @a.==(@c)
      return true
    end
    false
  end

  define_method(:isosceles?) do
    if @a.==(@b) || @a.==(@c) || @c.==(@b)
      return true
    end
    false
  end

  define_method(:scalene?) do
    if @a.!=(@b) && @a.!=(@c) && @c.!=(@b)
      return true
    end
    false
  end

  define_method(:triangle?) do
    if @a.>(@b.+(@c)) || @b.>(@a.+(@c)) || @c.>(@a.+(@b))
      return false
    end
    true
  end
end
