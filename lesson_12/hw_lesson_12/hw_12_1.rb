puts 'Врага какого персонажа вы хотите узнать?'

enemy = gets.chomp

case enemy
  when 'batman'
    puts 'joker'
  when 'sherlock'
    puts 'moriarti'
  when 'buratino'
    puts 'karabas-barabas'
  else
    puts 'bullshit'
end