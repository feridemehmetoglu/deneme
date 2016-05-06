json.array!(@scaffold2s) do |scaffold2|
  json.extract! scaffold2, :id, :Flower, :name, :type
  json.url scaffold2_url(scaffold2, format: :json)
end
