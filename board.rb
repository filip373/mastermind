require './match'

class Board

  def initialize(code)
    @code = code
  end

  def guess(colors)
    accurate = pair_accurate(colors)
    Match.new(accurate.size, find_misplaced(colors, accurate), colors.size)
  end

  private

  def pair_accurate(colors)
    accurate = []
    @code.each_with_index { |c, i| accurate.push i if colors[i] == c }
    accurate
  end

  def find_misplaced(colors, accurate)
    pairs = {}
    @code.each_with_index do |c, i|
      if !accurate.include?(i) && !pairs.key?(i)
        colors.each_with_index do |cc, ii|
          if !accurate.include?(ii) && !pairs.value?(ii) && ii != i && colors[ii] == @code[i]
            pairs[i] = ii
            break;
          end
        end
      end
    end
    pairs.size
  end

end
