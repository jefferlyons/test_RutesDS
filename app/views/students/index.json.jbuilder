json.array!(@students) do |student|
  json.extract! student, :id, :name, :school_id, :user_id
  json.url student_url(student, format: :json)
end
