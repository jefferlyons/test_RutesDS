json.extract! @student, :id, :name, :dir_school, :created_at, :updated_at, :user_id 
json.extract! @user, :id, :username, :email, :phone, :dir, :created_at, :updated_at , :admin
json.extract! @driver, :id, :name, :phone, :nit, :created_at, :updated_at