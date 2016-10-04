require "./lesson_12/game_2.rb"
require "./lesson_12/result_printer_2.rb"

printer = ResultPrinter2.new

slovo = ARGV[0]

if (Gem.win_platform? && ARGV[0])
  slovo = slovo.dup.force_encoding("IBM866").encode("IBM866", "cp1251").encode("UTF-8")
end

game = Game2.new(slovo)

while game.status == 0 do
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)