class AddGroupToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :group, foreign_key: true
  end
end
