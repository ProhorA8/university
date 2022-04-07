# класс
class Classroom < ApplicationRecord
  # принадлежит студенту и учителю
  belongs_to :student
  belongs_to :teacher

  # прямое соединение, имеет 0 и > расписаний
  has_and_belongs_to_many :timetables

  # наличие номера и этажа с целочисленным значением
  validates :number, :floor, presence: true, numericality: { only_integer: true }
end
