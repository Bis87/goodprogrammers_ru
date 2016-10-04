class JelArrays
    def initialize
      current_path = File.dirname(__FILE__)

      answers_path = "#{current_path}/data/answers.txt"

      if File.exist?(answers_path)
        f = File.read(answers_path, "r:UTF-8")
        answers = f.readlines
        f.close
      else
        puts "file doesn`t exist`"
      end
      @results = answers
    end

    def print_result(test)
      puts "\n\nРезультат теста (всего баллов - #{test.points}):"

      if (test.points >= 30)
        puts @results[0]
      elsif (test.points >= 25)
        puts @results[1]
      elsif (test.points >= 19)
        puts @results[2]
      elsif (test.points >= 14)
        puts @results[3]
      elsif (test.points >= 9)
        puts @results[4]
      elsif (test.points >= 4)
        puts @results[5]
      else
        puts @results[6]
      end
    end
end