json.array!(@student_drivers) do |student_driver|
  json.extract! student_driver, :id, :student_id, :driver_id
  json.url student_driver_url(student_driver, format: :json)
end
