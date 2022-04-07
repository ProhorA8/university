class AddAgeToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :age, :integer
  end
end
