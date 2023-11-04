require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*args)
    @list = args
  end

  def each(&block)
    MyEnumerable.each(@list, &block)
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

puts(list.filter(&:even?))
puts(list.filter(&:odd?))
