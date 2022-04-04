class AddForeignKeyForRecordBooksToStudents < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :record_books, :students
  end
end
