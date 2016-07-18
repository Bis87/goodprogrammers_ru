require "./lesson_12/game.rb"
require "./lesson_12/result_printer.rb"

printer = ResultPrinter.new

slovo = ARGV[0]

if (Gem.win_platform? && ARGV[0])
  slovo = slovo.dup.force_encoding("IBM866").encode("IBM866", "cp1251").encode("UTF-8")
end

game = Game.new(slovo)

while game.status == 0 do
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)