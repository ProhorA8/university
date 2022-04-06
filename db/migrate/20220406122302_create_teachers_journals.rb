class CreateTeachersJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers_journals do |t|
      t.belongs_to :teacher, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
