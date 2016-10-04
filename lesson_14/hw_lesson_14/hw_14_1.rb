current_path = File.dirname(__FILE__)

films_path = "#{current_path}/../data/films.txt"

if File.exist?(films_path)
  f = File.new(films_path, 'r:UTF-8')
  films = f.readlines
  f.close
else
  puts "file doesn`t exist`"
end

number = rand(films.length)

if number.odd?
  puts films[number - 1]
  puts films[number]
else
  puts films[number]
  puts films[number + 1]
end