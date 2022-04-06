class AddBestStudentToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :best_student, :string
    add_column :teachers, :bad_student, :string
  end
end
