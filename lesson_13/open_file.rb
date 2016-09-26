current_path = File.dirname(__FILE__)
file_path = "#{current_path}/data/quotes.txt"

if File.exist?(file_path)
  # тут можно работать с файлом, не боясь, что он не откроется
  file = File.new(file_path, 'r:UTF-8')
  lines = file.readlines
  file.close
  puts lines.class
  puts lines.sample
else
  puts "Файл не найден"
end