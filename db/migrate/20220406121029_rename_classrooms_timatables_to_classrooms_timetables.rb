class RenameClassroomsTimatablesToClassroomsTimetables < ActiveRecord::Migration[6.1]
  def change
    rename_table :classrooms_timatables, :classrooms_timetables
  end
end
