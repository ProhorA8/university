# Факультет
class Faculty < ApplicationRecord
  # имеет одно название
  has_one :faculty_name
  # имеет много групп
  has_many :groups
end
