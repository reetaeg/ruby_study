json.array!(@categories) do |category|
  json.extract! category, :id, :name, :is_used, :cat_type, :category_id
  json.url category_url(category, format: :json)
end
