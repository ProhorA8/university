# Учитель
class Teacher < ApplicationRecord
  # имеет много студентов через класс
  has_many :students, through: :classroom

  # имеет моного студентов через разписание
  has_many :students, through: :timetable

  # имеет коллекцию книг через полиморфную связь
  has_many :books, as: :imageable

  # обязательное присутствие имени с максимальной длиной символов 20
  validates :teachername, presence: true, length: { maximum: 20 }
end
