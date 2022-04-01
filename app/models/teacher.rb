# Учитель
class Teacher < ApplicationRecord
  # имеет много студентов
  has_many :students, uniqueness: true

  # обязательное присутствие имени с максимальной длиной символов 20
  validates :teachername, presence: true, length: { maximum: 20 }
end
