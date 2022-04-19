class RemoveTeacherIdFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :teacher_id, :integer
  end
end
