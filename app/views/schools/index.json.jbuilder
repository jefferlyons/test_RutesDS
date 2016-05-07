json.array!(@schools) do |school|
  json.extract! school, :id, :name, :adress, :cell, :email
  json.url school_url(school, format: :json)
end
