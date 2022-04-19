class AddCabinetToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_reference :teachers, :cabinet, null: false, foreign_key: true
  end
end
