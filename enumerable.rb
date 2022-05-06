module MyEnumerable
  def all?
    result = true

    each { |n| result = false unless yield n }

    result
  end
end
