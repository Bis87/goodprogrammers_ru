# Посчитать количество продуктов в экспорте

# Создать нужные поля в импорте

# Прочесть экспорт

# Записать значения из эспорта в соответствующие поля импорта

require 'nokogiri'

f_r = File.open("nokogiri/result.xml")
result = Nokogiri::XML(f_r)
f_r.close

f_s = File.open("nokogiri/source.xml")
source = Nokogiri::XML(f_s)
f_s.close

x = source.xpath("/invoices/invoice/code")

puts result

y = result.at_xpath("/invoices/invoice/code")

y.add_next_sibling(x)

puts result

File.write("nokogiri/result.xml", result)