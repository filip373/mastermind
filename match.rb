class Match
  attr_reader :accurate, :misplaced

  def initialize(accurate, misplaced, total)
    @accurate = accurate
    @misplaced = misplaced
    @total = total
  end

  def to_s
    string = ''
    @accurate.times { string << 'A' }
    @misplaced.times { string << 'M' }
    string = 'no match' if string.empty?
    return string
  end

  def won?
    @accurate == @total
  end

end
