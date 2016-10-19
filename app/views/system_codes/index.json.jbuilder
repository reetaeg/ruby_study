json.array!(@system_codes) do |system_code|
  json.extract! system_code, :id, :code_type, :code, :name, :system_code_id, :description
  json.url system_code_url(system_code, format: :json)
end
