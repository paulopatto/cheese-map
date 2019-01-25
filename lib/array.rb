class Array
  def xmap &block
    reduce([]) do |memo, value|
      memo << block.call(value)
    end
  end
end
