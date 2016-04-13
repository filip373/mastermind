class SecretCode

  def initialize(colors, size)
    @colors = colors
    @size = size
  end

  def generate
    code = []
    @size.times { code.push(@colors.values.to_a.sample) }
    return code
  end

end
