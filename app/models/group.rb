# группа
class Group < ApplicationRecord
  # имеет много студентов
  has_many :students
end
