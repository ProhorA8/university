# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# создадим 10 студентов с рандомными именами
# и создадим зачётки каждому студенту, без оценок
10.times do
  studentname = Faker::Name.name
  student = Student.create studentname: studentname
  RecordBook.create student: student
end
puts 'Студенты с зачётками созданы'

4.times do
  teachername = Faker::Name.name
  Teacher.create teachername: teachername
end
puts 'Учителя созданы'
