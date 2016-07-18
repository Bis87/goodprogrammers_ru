class Man
  def initialize(name, last_name, film)
    @age = rand(1..100)
    @name = name
    @last_name = last_name
    @film = film
  end

  def show_age
    puts "age of the man is #{@age}"
  end

  def show_full_name
    puts "Full name of the man is #{@name} #{@last_name}"
  end

  def show_film
    puts "lovely film is #{@film}"
  end

end