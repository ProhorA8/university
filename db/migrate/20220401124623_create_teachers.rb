class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :teachername, null: false

      t.timestamps
    end
  end
end
