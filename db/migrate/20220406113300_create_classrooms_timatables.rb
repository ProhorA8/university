class CreateClassroomsTimatables < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms_timatables, id: false do |t|
      t.belongs_to :classroom
      t.belongs_to :timetable

      t.timestamps
    end
  end
end
