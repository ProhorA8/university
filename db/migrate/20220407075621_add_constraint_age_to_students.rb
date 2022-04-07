class AddConstraintAgeToStudents < ActiveRecord::Migration[6.1]
  def change
    change_column_null :students, :age, false
  end
end
