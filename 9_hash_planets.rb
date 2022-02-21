planets = {"Меркурий" => 0.32868, "Венера" => 4.81068,
            "Земля" => 5.97600, "Марс" => 0.63345, "Юпитер" => 1876.64328,
            "Сатурн" => 561.80376, "Уран" => 86.05440, "Нептун" => 101.59200}

sorted = planets.sort_by { |planet, mass| mass }
collection1 = sorted[0..2].each_with_object({}) { |p,val| val[p[0]] = p[1] }
puts collection1
collection2 = sorted[sorted.size-3..sorted.size].each_with_object({}) { |p,val| val[p[0]] = p[1] }
puts collection2
