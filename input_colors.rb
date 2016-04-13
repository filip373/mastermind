class InputColors

  def initialize(size, colors)
    @size = size
    @colors = colors
  end

  def map(string)
    mapped = @colors.map(string)
    raise "Invalid number of colors (#{mapped.size} instead of #{@size})" if mapped.size != @size
    mapped
  end

  def keys
    @colors.definitions.keys
  end

  def values
    @colors.definitions.values
  end

  def size
    @size
  end

end
