current_path = File.dirname(__FILE__)

foreheads_path = "#{current_path}/data/foreheads.txt"

eyes_path = "#{current_path}/data/eyes.txt"

noses_path = "#{current_path}/data/noses.txt"

mouths_path = "#{current_path}/data/mouths.txt"

if File.exist?(foreheads_path)
  f = File.open(foreheads_path)
  foreheads = f.readlines
  f.close
else
  puts "file doesn't exist"
end

if File.exist?(eyes_path)
  f = File.open(eyes_path)
  eyes = f.readlines
  f.close
else
  puts "file doesn't exist"
end

if File.exist?(noses_path)
  f = File.open(noses_path)
  noses = f.readlines
  f.close
else
  puts "file doesn't exist"
end

if File.exist?(mouths_path)
  f = File.open(mouths_path)
  mouths = f.readlines
  f.close
else
  puts "file doesn't exist"
end

puts foreheads.sample
puts eyes.sample
puts noses.sample
puts mouths.sample