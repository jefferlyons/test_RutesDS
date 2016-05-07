class RemoveDirSchoolFromStudent < ActiveRecord::Migration
  def change
  	remove_column :students, :dir_school
  end
end
