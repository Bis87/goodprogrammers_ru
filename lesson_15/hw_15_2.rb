require 'cyrillizer'

puts 'введите фразу латиницей'
cyr_text = STDIN.gets.encode("UTF-8").chomp

puts 'вот ваша фраза кириллицей'
puts cyr_text.to_lat