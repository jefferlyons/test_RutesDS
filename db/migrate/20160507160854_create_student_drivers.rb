class CreateStudentDrivers < ActiveRecord::Migration
  def change
    create_table :student_drivers do |t|
      t.references :student, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
