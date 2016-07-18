require './lesson_12/hw_lesson_12/buratino.rb'

buratos = Buratino.new
abrikos = Buratino.new

buratos.increase(12)
puts buratos.nose_length

abrikos.increase(100)
puts abrikos.nose_length

buratos.decrease(10)

abrikos.decrease(99)

puts buratos.nose_length


puts abrikos.nose_length