# Факультет
class Faculty < ApplicationRecord
  # принадлежит студенту
  belongs_to :student
  # имеет одно название
  has_one :faculty_name
end
