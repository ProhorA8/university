class AddFaculyToGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :faculty, null: false, foreign_key: true
  end
end
