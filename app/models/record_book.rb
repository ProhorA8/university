# Зачётная книжка
class RecordBook < ApplicationRecord
  # принадлежит одному студенту
  belongs_to :student

  # оценка только целочисленное значение > 0
  validates :grade, numericality: { greater_than: 0 }
end
