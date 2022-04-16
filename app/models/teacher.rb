# Учитель
class Teacher < ApplicationRecord
  # имеет много студентов через класс
  has_many :students, through: :cabinet

  # имеет моного студентов через разписание
  has_many :students, through: :timetable

  # имеет коллекцию книг через полиморфную связь
  has_many :books, as: :imageable

  # имеет один журнал
  has_one :teachers_journal

  # обязательное присутствие имени с максимальной длиной символов 20
  validates :teachername, presence: true, length: { maximum: 20 }
end
