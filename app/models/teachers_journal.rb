# Журнал учителя
class TeachersJournal < ApplicationRecord
  # пренадлежит учителю
  belongs_to :teacher
end
