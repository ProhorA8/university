# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# создадим 10 студентов с рандомными именами
10.times do
  studentname = Faker::Name.name
  Student.create studentname: studentname
end
puts 'Студенты созданы'

4.times do
  teachername = Faker::Name.name
  Teacher.create teachername: teachername
end
puts 'Учителя созданы'
