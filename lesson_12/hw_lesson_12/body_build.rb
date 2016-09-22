class BodyBuild
  def initialize
    @biceps = 0
    @triceps = 0
    @kvadriceps = 0
    @pressuha = 0
  end

  def push_biceps
    @biceps += 1
  end
  def push_triceps
    @triceps += 1
  end
  def push_kvadriceps
    @kvadriceps += 1
  end
  def push_pressuha
    @pressuha += 1
  end

  def check_condition
    puts @biceps
    puts @triceps
    puts @kvadriceps
    puts @pressuha
  end



    #  конструктор, где создаем три группы мышц
    # def initialize
    #   @triceps = 0
    #   @biceps = 0
    #   @deltovidka = 0
    # end

    #  увеличиваем мышцы в зависимости от параметра – типа мышцы
    def pump_muscle(muscle)

      case muscle
        when "triceps" then @triceps += 1
        when "biceps" then @biceps += 1
        when "deltovidka" then @deltovidka += 1
      end

    end

    #  Выводим текущий статус мышц
    def show_muscles
      puts "Бицепсы: #{@biceps}"
      puts "Трицепсы: #{@triceps}"
      puts "Дельтовидка: #{@deltovidka}"
    end



end