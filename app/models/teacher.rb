# Учитель
class Teacher < ApplicationRecord
  # принадлежит кабинету
  belongs_to :cabinet

  # имеет один журнал
  has_one :teachers_journal, dependent: :destroy

  # имеет много студентов через разписание
  has_many :timetables
  has_many :students, through: :timetables

  # имеет коллекцию книг через полиморфную связь
  has_many :books, as: :imageable

  # обязательное присутствие имени с максимальной длиной символов 20
  validates :teachername, presence: true, length: { maximum: 20 }
end
