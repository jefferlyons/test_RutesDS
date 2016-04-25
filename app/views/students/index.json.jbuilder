json.array!(@students) do |student|
  json.extract! student, :id, :name, :dir_school, :user_id
  json.url student_url(student, format: :json)
end
