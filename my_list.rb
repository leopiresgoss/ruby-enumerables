require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each
    @list.each { |e| yield e if block_given? }
  end
end

list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

# Test #all?
list.all? { |e| e < 5 }
# => true

list.all? { |e| e > 5 }
# => false

list.all?
# => true

# Test #any?
list.any? { |e| e == 2 }
# => true

list.any? { |e| e == 5 }
# => false

list.any?
# => true

# Test #filter
list.filter(&:even?)
# => [2, 4]

list.filter
# => [1, 2, 3, 4]
