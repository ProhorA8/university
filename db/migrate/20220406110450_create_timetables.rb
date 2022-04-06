class CreateTimetables < ActiveRecord::Migration[6.1]
  def change
    create_table :timetables do |t|
      t.string :lesson
      t.belongs_to :student
      t.belongs_to :teacher

      t.timestamps
    end
  end
end
