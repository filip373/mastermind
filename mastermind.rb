require './guessing_game'
require './creating_game'

class Mastermind

  def initialize(tries, colors)
    @tries = tries
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
    when 'g' then return GuessingGame.new(@tries, @colors)
    when 'c' then return CreatingGame.new(@tries, @colors)
    else 'none'
    end
  end

end
