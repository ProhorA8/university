# Учитель
class Teacher < ApplicationRecord
  # имеет много кабинетов
  has_many :cabinets

  # имеет моного студентов через разписание
  has_many :timetables
  has_many :students, through: :timetables

  # имеет коллекцию книг через полиморфную связь
  has_many :books, as: :imageable

  # имеет один журнал
  has_one :teachers_journal

  # обязательное присутствие имени с максимальной длиной символов 20
  validates :teachername, presence: true, length: { maximum: 20 }
end
