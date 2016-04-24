json.array!(@schools) do |school|
  json.extract! school, :id, :name, :dir, :phone
  json.url school_url(school, format: :json)
end
