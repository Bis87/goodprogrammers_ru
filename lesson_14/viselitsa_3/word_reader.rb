class WordReader

  require 'unicode_utils'

  def read_from_file(file)
    if File.exist?(file)
      f = File.new(file, "r:UTF-8")
      elements = f.readlines
      element = elements.sample.chomp
      element_downcase = UnicodeUtils.downcase(element)
      f.close

    else
      puts "Файл не найден"
    end
    return element_downcase
  end
end
