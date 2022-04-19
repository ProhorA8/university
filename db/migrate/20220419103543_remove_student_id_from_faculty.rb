class RemoveStudentIdFromFaculty < ActiveRecord::Migration[6.1]
  def change
    remove_column :faculties, :student_id, :integer
  end
end
