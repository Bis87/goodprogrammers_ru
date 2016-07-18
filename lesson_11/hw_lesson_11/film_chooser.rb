require "./lesson_11/hw_lesson_11/film.rb"
require "./lesson_11/hw_lesson_11/man.rb"

puts "write your favourite film director"

film_director = gets.chomp


films = []
while films.size < 3 do
  puts "write film name of your favourite film director"
  film_ui = gets.chomp
  film = Film.new(film_ui, film_director)
  films << film
end

man1_film = films.sample
man1 = Man.new("name1", "name2", man1_film)
man1.show_full_name
puts "his lovely film is "+man1_film.film_name

