current_path = File.dirname(__FILE__)

questions_f_path = "#{current_path}/../data/questions.txt"

answers_f_path = "#{current_path}/../data/answers.txt"

if File.exist?(questions_f_path)
  f = File.new(questions_f_path, 'r:UTF-8')
  questions = f.readlines
  f.close
else
  puts "Файл не найден"
end

if File.exist?(answers_f_path)
  f = File.new(answers_f_path, 'r:UTF-8')
  answers = f.readlines
  f.close
else
  puts "Файл не найден"
end

puts 'Мини-викторина. Ответьте на вопросы:'

counter = 0

while counter < questions.length
  puts questions[counter]

  user_answer = STDIN.gets.encode("UTF-8").chomp

  if user_answer == answers[counter].chomp
    puts "правильный ответ!!!"
  else
    puts "Неверно( правильный ответ: #{answers[counter]}"
  end

  counter += 1
end