require './mastermind'
require './board'
require './secret_code'
require './input_colors'
require './colors'

colors = InputColors.new(4, Colors.new({
      'r' => :red, 'g' => :green, 'b' => :blue,
      'y' => :yellow, 'o' => :orange, 'p' => :purple
    })
  )

code = SecretCode.new(colors).generate
p code
Mastermind.new(12, Board.new(code), colors).start
