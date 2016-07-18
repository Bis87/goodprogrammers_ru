require "./lesson_11/bridge.rb"
require "./lesson_11/hw_lesson_11/chameleo.rb"
require "./lesson_11/hw_lesson_11/man.rb"

bridge = Bridge.new
sleep 1

if !bridge.is_opened?
  bridge.open
end

sleep 1

puts bridge.is_opened?.to_s

lizard = Chameleo.new

lizard.set_colour("red")
lizard.set_colour("blue")
lizard.set_colour("green")

man_vanya = Man.new("Vanya", "Ivanov")
man_vanya.show_age
man_vanya.show_full_name
man_vasya = Man.new("Vasya", "Vasiliev")
man_vasya.show_age
man_vasya.show_full_name
man_ne_man = Man.new("4ubaka", "Sobaka")
man_ne_man.show_age
man_ne_man.show_full_name



