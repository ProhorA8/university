# Зачётная книжка
class RecordBook < ApplicationRecord
  # принадлежит одному студенту
  belongs_to :student
end
