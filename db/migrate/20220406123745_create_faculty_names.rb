class CreateFacultyNames < ActiveRecord::Migration[6.1]
  def change
    create_table :faculty_names do |t|
      t.belongs_to :faculty

      t.timestamps
    end
  end
end
