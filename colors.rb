class Colors

  attr_reader :definitions

  def initialize(definitions)
    @definitions = definitions
  end

  def map(string)
    chars = string.split('')
    raise 'Invalid color.' unless chars.all? { |c| definitions.keys.include?(c) }
    chars.map { |c| definitions[c] }
  end

end
