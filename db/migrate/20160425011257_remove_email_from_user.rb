class RemoveEmailFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :email
    change_column :users, :phone,  :string  
  end
end
