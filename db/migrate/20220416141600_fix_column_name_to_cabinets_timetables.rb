class FixColumnNameToCabinetsTimetables < ActiveRecord::Migration[6.1]
  def change
    rename_column :cabinets_timetables, :cabinets_id, :cabinet_id
  end
end
