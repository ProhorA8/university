# класс
class Classroom < ApplicationRecord
  # принадлежит студенту и учителю
  belongs_to :student
  belongs_to :teacher
end
