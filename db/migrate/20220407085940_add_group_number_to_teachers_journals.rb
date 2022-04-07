class AddGroupNumberToTeachersJournals < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers_journals, :group_number, :string
  end
end
