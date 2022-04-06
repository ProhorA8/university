# Студент
class Student < ApplicationRecord
  # имеет одну уникальную зачётку, которая удалиться при удалении судента
  # destroy – вызывается на связных объектах
  has_one :record_book

  # имеет много учителей через класс
  has_many :teachers, through: :classroom

  # имеет много учителей через расписание
  has_many :teachers, through: :timetable

  # имеет коллекцию книг через полиморфную связь
  has_many :books, as: :imageable

  # обязательное присутствие имени с максимальной длиной символов 20
  validates :studentname, presence: true, length: { maximum: 20 }

  # колбэк перед валидацие, если студент без имени то устанавливаем имя сами
  before_validation {
    self.studentname = "Прохожий_#{rand 100}" if studentname.blank?
  }
end
