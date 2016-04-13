require './secret_code'
require './board'

class CreatingGame

  def initialize(tries, colors)
    @tries = tries
    @colors = colors
    @code = SecretCode.new(@colors)
  end

  def start
    @board = Board.new(get_code)
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
    code = @code.generate
    puts "#{t + 1}: Computer guessing #{@colors.size} colors #{@colors.keys}: #{code}"
    @board.guess(code)
  end

  def get_code
    puts "Specify code - #{@colors.size} colors #{@colors.keys}: "
    @colors.map(gets.chomp)
  end

  def display_end(won)
    if won
      puts 'Computer wins!'
    else
      puts 'Computer lost!'
    end
  end

end
