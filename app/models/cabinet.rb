# класс
class Cabinet < ApplicationRecord
  # имеет одного учителя
  has_one :teacher
  # имеет одну группу
  has_one :group

  # прямое соединение, имеет 0 и > расписаний
  has_and_belongs_to_many :timetables

  # наличие номера и этажа с целочисленным значением
  validates :number, :floor, presence: true, numericality: { only_integer: true }
end
