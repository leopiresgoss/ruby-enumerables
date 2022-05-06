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

my_list = MyList.new(1, 2, 3)
puts my_list
# Test each method
my_list.each { |e| puts "elem #{e}" }
# => elem 1
# => elem 2
# => elem 3

puts my_list.each
# => [1, 2, 3]

puts my_list.all? { |n| n > 0 }
