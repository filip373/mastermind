class Mastermind

  def initialize(tries, board, colors, size)
    @tries = tries
    @board = board
    @colors = colors
    @size = size
  end

  def start
    won = false
    @tries.times do |t|
      print "#{t + 1}: Make your guess [r|g|b|y|o|p] (use \",\" as separator): "
      colors = map(gets.chomp)
      match = @board.guess(colors)
      if match.won?
        won = true
        break
      end
      puts match
    end
    display_end(won)
  end

  private

  def display_end(won)
    if won
      puts 'You won!'
    else
      puts 'You lost!'
    end
  end

  def map(colors_string)
    colors = colors_string.split(',')
    raise 'Invalid color' unless colors.size == @size && colors.all? { |c| @colors.include?(c) }
    colors.map { |c| @colors[c] }
  end

end
