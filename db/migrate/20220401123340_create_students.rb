class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :studentname, null: false
      t.integer :teacher_id

      t.timestamps
    end
  end
end
