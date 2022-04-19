class RemoveStudentAndTeacherFromCabinets < ActiveRecord::Migration[6.1]
  def change
    remove_column :cabinets, :student_id, :integer
    remove_column :cabinets, :teacher_id, :integer
    remove_column :cabinets, :student, :integer
    remove_column :cabinets, :teacher, :integer
  end
end
