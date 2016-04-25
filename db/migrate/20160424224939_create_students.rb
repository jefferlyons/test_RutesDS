class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :dir_school

      t.timestamps null: false
    end
  end
end
