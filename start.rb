require './mastermind'
require './board'
require './secret_code'

colors = {
  'r' => :red, 'g' => :green, 'b' => :blue,
  'y' => :yellow, 'o' => :orange, 'p' => :purple
}

code = SecretCode.new(colors, 4).generate
p code
Mastermind.new(12, Board.new(code), colors, 4).start
