class MyList
  attr_reader :list

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end
