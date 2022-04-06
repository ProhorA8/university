# Факультет
class Faculty < ApplicationRecord
  # пренадлежит студенту
  belongs_to :student
  # имеет одино название
  has_one :faculty_name
end
