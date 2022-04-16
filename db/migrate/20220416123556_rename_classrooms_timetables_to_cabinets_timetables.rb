class RenameClassroomsTimetablesToCabinetsTimetables < ActiveRecord::Migration[6.1]
  def change
    rename_table :classrooms_timetables, :cabinets_timetables
  end
end
