class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :cabinets_timetables, :classroom_id, :cabinets_id
  end
end
