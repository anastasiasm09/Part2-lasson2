class User
  def set_surname(surname)
    @surname = surname
  end

  def surname
    @surname
  end

  def set_name(name)
    @name = name
  end

  def name
    @name
  end

  def set_grade(grade)
    @grade = grade
  end

  def grade
    @grade
  end
end

users = []

10.times do
  user = User.new
  user.set_surname("Иванов")
  user.set_name("Иван")
  user.set_grade(rand(1..5))
  users << user
end

sum_grade = 0
users.each { |user| sum_grade += user.grade }
average = sum_grade / users.size

excellent = users.select { |user| user.grade > average }
puts "Средняя оценка: #{average}"
puts "Оценки отличников: #{excellent.map { |user| user.grade }}"
