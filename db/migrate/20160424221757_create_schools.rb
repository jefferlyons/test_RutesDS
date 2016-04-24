class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :dir
      t.integer :phone

      t.timestamps null: false
    end
  end
end
