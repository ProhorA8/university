class AddFloorToClassroom < ActiveRecord::Migration[6.1]
  def change
    add_column :classrooms, :floor, :integer
    change_column_null :classrooms, :floor, false
  end
end
