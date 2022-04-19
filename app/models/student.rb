# Студент
class Student < ApplicationRecord
  # имеет одну уникальную зачётку, которая удалиться при удалении судента
  # destroy – вызывается на связных объектах
  has_one :record_book

  # имеет много кабинетов
  has_many :cabinets

  # имеет много учителей через расписание
  has_many :timetables
  has_many :teachers, through: :timetables

  # имеет коллекцию книг через полиморфную связь
  has_many :books, as: :imageable

  # имеет один факультет и имеет одно название факультета через факультет
  has_one :faculty
  has_one :faculty_name, through: :faculty

  # студент принадлежит группе
  belongs_to :group

  # обязательное присутствие имени с максимальной длиной символов 20
  validates :studentname, presence: true, length: { maximum: 30 }
  # обязательное наличие возраста в диапазоне 18..40
  validates :age, presence: true, inclusion: { in: (18..40) }

  # колбэк перед валидацие, если студент без имени то устанавливаем имя сами
  before_validation {
    self.studentname = "Прохожий_#{rand 100}" if studentname.blank?
  }
end
