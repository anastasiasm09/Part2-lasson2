colors = []

loop do
  puts 'Введите цвет'
  color = gets.chomp

  if color == 'stop'
    break
  else
    colors << color
  end
end

p colors
