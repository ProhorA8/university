# Название факультета
class FacultyName < ApplicationRecord
  # пренадлежит факультету
  belongs_to :faculty
end
