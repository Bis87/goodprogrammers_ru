class JelMethods

  def initialize
    current_path = File.dirname(__FILE__)
    questions_path = "#{current_path}/data/questions.txt"

    if File.exist?(questions_path)
      f = File.read(questions_path, "r:UTF-8")
      questions = f.readlines
      f.close
    else
      puts "file doesn`t exist`"
    end

    @questions = questions
    @points = 0
    @current_question = 0
  end

  def ask
    puts @questions[@current_question.to_i]

    user_input = nil

    until (user_input == 1 or user_input == 2 or user_input == 3)
      puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"
      user_input = gets.chomp.to_i
    end

    if (user_input == 1)
      @points += 2
    elsif (user_input == 3)
      @points += 1
    end

    @current_question += 1

    if @current_question >= @questions.size
      return false
    else
      return true
    end
  end

  def points
    return @points
  end

end