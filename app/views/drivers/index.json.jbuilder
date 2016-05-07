json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :phone, :nit
  json.url driver_url(driver, format: :json)
end
