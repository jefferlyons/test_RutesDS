json.array!(@students) do |student|
  json.extract! student, :id, :name, :school_id, :user_id
  json.url student_url(student, format: :json)
end
json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :phone, :dir , :admin
  json.url user_url(user, format: :json)
end
json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :phone, :nit
  json.url driver_url(driver, format: :json)
end