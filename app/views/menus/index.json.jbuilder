json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :path, :is_use, :p_id
  json.url menu_url(menu, format: :json)
end
