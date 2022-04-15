class AddNameToFacultyNames < ActiveRecord::Migration[6.1]
  def change
    add_column :faculty_names, :name, :string
  end
end
