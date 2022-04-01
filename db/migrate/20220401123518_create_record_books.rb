class CreateRecordBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :record_books do |t|
      t.integer :grade
      t.integer :student_id

      t.timestamps
    end
  end
end
