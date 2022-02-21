arr = %w[январь февраль март апрель май июнь июль август сентябрь октябрь ноябрь декабрь]
min = 100
arr.each do |month|
  min = month.size if month.size < min
end

month_min = arr.select { |month| month.size == min }
puts month_min

max = 1
arr.each do |month|
  max = month.size if month.size > max
end

month_max = arr.select { |month| month.size == max }
puts month_max
