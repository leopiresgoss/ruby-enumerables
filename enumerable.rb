module MyEnumerable
  def all?
    result = true
    each { |n| result = false unless yield n }
    result
  end

  def any?
    result = false
    each { |n| bool = true if yield n }
    result
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield n }
    arr
  end
end
