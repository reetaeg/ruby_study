json.array!(@role_menus) do |role_menu|
  json.extract! role_menu, :id, :name, :role_id, :is_used, :menu_id
  json.url role_menu_url(role_menu, format: :json)
end
