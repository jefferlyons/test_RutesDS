class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :adress
      t.string :cell
      t.string :email

      t.timestamps null: false
    end
  end
end
