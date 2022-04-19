# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# создаём кабинет с №1 на первом этаже
cabinet = Cabinet.create number: 1, floor: 1
puts 'Кабинет создан'

# Создаём факультет
faculty = Faculty.create
puts 'Факультет создан'

# Создаём название факультета
FacultyName.create faculty_id: faculty.id, name: 'МСФ'
puts 'Название факультета создано'

# Создаём две группы 502, 503
num = 502
(1..2).each do
  Group.create number: num, faculty_id: faculty.id, cabinet_id: cabinet.id
  num += 1
end
puts 'Группы созданы'

# создадим 10 студентов в группе 502 с рандомным именем и возрастом
# и создадим зачётки каждому студенту с предметом и оценкой 5
number_students = 10
number_students.times do
  student_age = (18..40)
  name = Faker::Name.name
  # получаем первую группу
  group = Group.first
  # cоздаём студента
  student = Student.create! studentname: name, age: rand(student_age), group_id: group.id
  # создаём зачётку студента
  RecordBook.create student: student, subject: "Literature", grade: 5

  # создадим по 2-е книги каждому студенту
  (1..2).each do |i|
    author = Faker::Book.author
    title = Faker::Book.title
    book = Book.new book_name: title, author: author
    student.books << book
  end
end
puts 'Студенты созданы'
puts 'Зачётки для студентов созданы'
puts 'Книги для студента созданы'

# создаём учителей
groups = Group.all
groups.each do |group|
  name = Faker::Name.name
  teacher = Teacher.create teachername: name, cabinet_id: 1
  # создаём журнал учителю с назначением группы
  TeachersJournal.create teacher_id: teacher.id, group_number: group.number

  # создадим по 2-е книги каждому учителю
  (1..2).each do |i|
    author = Faker::Book.author
    title = Faker::Book.title
    book = Book.new book_name: title, author: author
    teacher.books << book
  end
end
puts 'Учителя созданы'
puts 'Журналы для учителей созданы'
puts 'Книги для учителей созданы'

teacher = Teacher.first
student = Student.first
Timetable.create lesson: 'Informatics', teacher_id: teacher.id, student_id: student.id
puts 'Расписание создано'
