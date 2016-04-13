require './guessing_game'
require './creating_game'

class Mastermind

  def initialize(tries, board, colors)
    @tries = tries
    @board = board
    @colors = colors    
  end

  def start
    game = 'none'
    game = get_game until game != 'none'
    game.start
  end

  private

  def get_game
    puts 'Guessing or creating? [g/c]: '
    create_game(gets.chomp)
  end

  def create_game(input)
    case input
    when 'g' then return GuessingGame.new(@tries, @board, @colors)
    when 'c' then return CreatingGame.new
    else 'none'
    end
  end

end
