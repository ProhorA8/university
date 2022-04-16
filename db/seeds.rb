# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# создаём учителей
number_teachers = 2
group_numbers = 30
number_teachers.times do
  teachername = Faker::Name.name
  teacher = Teacher.create teachername: teachername

  # создаём журнал учителю
  TeachersJournal.create teacher_id: teacher.id, group_number: group_numbers
  group_numbers += 1

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

# создадим 10 студентов с рандомными именами
# и создадим зачётки каждому студенту с предметом и оченкой
number_students = 10
number_students.times do
  student_age = (18..40)
  studentname = Faker::Name.name
  # cоздаём студента
  student = Student.create studentname: studentname, age: rand(student_age)
  # создаём зачётку студента
  RecordBook.create student: student, subject: "Literature", grade: 5

  # создадим по 2-е книги каждому студенту
  (1..2).each do |i|
    author = Faker::Book.author
    title = Faker::Book.title
    book = Book.new book_name: title, author: author
    student.books << book
  end

  # находим 1-ого учителя
  teacher = Teacher.first
  # создаём класс для всех студентов и учителя с номером класса 1 на первом этаже
  Cabinet.create number: 1, teacher_id: teacher.id, student_id: student.id, floor: 1

  Timetable.create lesson: 'Informatics', teacher_id: teacher.id, student_id: student.id
end
puts 'Студенты созданы'
puts 'Зачётки созданы'
puts 'Книги для студента созданы'
puts 'Класс создан'
puts 'Расписание создано'

# Создаём факультет с пользователем id = 1
faculty = Faculty.create student_id: 1
puts 'Факультет для студента создан'

# Создаём название факультета
# Добраться до названия факультета у студента можно через – faculty_name.name
FacultyName.create faculty_id: faculty.id, name: 'МСФ'
puts 'Название факультета создано'
