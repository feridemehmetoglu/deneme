json.array!(@ruby2scaffolds) do |ruby2scaffold|
  json.extract! ruby2scaffold, :id, :name
  json.url ruby2scaffold_url(ruby2scaffold, format: :json)
end
