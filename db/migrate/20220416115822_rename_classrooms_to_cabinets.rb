class RenameClassroomsToCabinets < ActiveRecord::Migration[6.1]
  def change
    rename_table :classrooms, :cabinets
  end
end
