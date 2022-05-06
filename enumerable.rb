module MyEnumerable
  def all?
    result = true
    if block_given?
      each { |n| result = false unless yield n }
    else
      each { |n| result = false unless n }
    end
    result
  end

  def any?
    result = false

    if block_given?
      each { |n| result = true if yield n }
    else
      each { |n| result = true if n }
    end

    result
  end

  def filter
    arr = []
    if block_given?
      each { |n| arr.push(n) if yield n }
    else
      each { |n| arr.push(n) }
    end
    arr
  end
end
