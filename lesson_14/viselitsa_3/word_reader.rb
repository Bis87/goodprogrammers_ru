class WordReader
  def read_from_file(file)
    if File.exist?(file)
      f = File.new(file, "r:UTF-8")
      elements = f.readlines
      f.close
    else
      puts "Файл не найден"
    end
    return elements.sample.chomp
  end
end
