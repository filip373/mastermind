class GuessingGame

  def initialize(tries, board, colors)
    @tries = tries
    @board = board
    @colors = colors
  end

  def start
    won = false
    @tries.times do |t|
      print "#{t + 1}: Guess #{@colors.size} colors #{@colors.keys}: "
      given_colors = @colors.map(gets.chomp)
      match = @board.guess(given_colors)
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

end
