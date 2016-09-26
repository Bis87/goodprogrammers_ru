current_path = File.dirname(__FILE__)


# filename = ARGV[0]

file_path = "#{current_path}/../data/hw_13_1.txt"

if File.exist?(file_path)
  # тут можно работать с файлом, не боясь, что он не откроется
  f = File.new(file_path, 'r:UTF-8')
  lines = f.readlines
  f.close
  start = lines.length - 5
  (start).times do
    puts lines[start]
    start += 1
  end

  (start).times {||}

else
  puts "Файл не найден"
end