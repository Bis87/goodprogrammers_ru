require "pony"
require "io/console"
require "cyrillizer"

my_mail = "pavel.rytvinsky@gmail.com"

puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"

password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо? Введите адрес:"
send_to = STDIN.gets.chomp

puts "Тема письма:"
subject = STDIN.gets.encode("UTF-8").chomp
subject.to_lat

puts "Что написать в письме?"

body = STDIN.gets.chomp.encode("UTF-8")>
    Pony.mail({
                  :subject => subject,
                  :body => body,
                  :to => send_to,
                  :from => my_mail,
                  :via => :sendmail,
                  :via_options => {
                      :address => 'smtp.gmail.com',
                      :port => '587',
                      :tls => true,
                      :user_name => my_mail,
                      :password => password,
                      :authentication => :plain
                  }
              })