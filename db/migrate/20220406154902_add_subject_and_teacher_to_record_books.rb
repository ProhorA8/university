class AddSubjectAndTeacherToRecordBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :record_books, :subject, :string
    add_column :record_books, :teacher, :string
  end
end
