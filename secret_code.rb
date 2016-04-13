class SecretCode

  def initialize(colors)
    @colors = colors
  end

  def generate
    code = []
    @colors.size.times { code.push(@colors.values.to_a.sample) }
    return code
  end

end
