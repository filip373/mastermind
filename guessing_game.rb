require './board'
require './secret_code'

class GuessingGame

  def initialize(tries, colors)
    @tries = tries
    @colors = colors
    @board = Board.new(SecretCode.new(@colors).generate)
  end

  def start
    won = false
    @tries.times do |t|
    match = step(t)
      if match.won?
        won = true
        break
      end
      puts match
    end
    display_end(won)
  end

  private

  def step(t)
    print "#{t + 1}: Guess #{@colors.size} colors #{@colors.keys}: "
    given_colors = @colors.map(gets.chomp)
    @board.guess(given_colors)
  end

  def display_end(won)
    if won
      puts 'You won!'
    else
      puts 'You lost!'
    end
  end

end
