class AddCabinetToGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :cabinet, null: false, foreign_key: true
  end
end
