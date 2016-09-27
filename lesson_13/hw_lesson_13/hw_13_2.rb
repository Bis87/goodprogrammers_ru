current_path = File.dirname(__FILE__)


filename = ARGV[0]

file_path = "#{current_path}/../data/#{filename}"

if File.exist?(file_path)
  f = File.new(file_path, 'r:UTF-8')
  lines = f.readlines
  f.close
  empty_sring = 0
  all_string = lines.length
  puts empty_sring
  for i in lines do
    if i.strip == ""
      empty_sring += 1
    end
  end

  puts all_string
  puts empty_sring
else
  puts "Файл не найден"
end