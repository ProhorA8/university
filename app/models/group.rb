# группа
class Group < ApplicationRecord
  # принадлежит кабинету
  belongs_to :cabinet
  # пренадлежит факультету
  belongs_to :faculty
  # имеет много студентов
  has_many :students
end
