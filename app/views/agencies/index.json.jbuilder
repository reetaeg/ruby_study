json.array!(@agencies) do |agency|
  json.extract! agency, :id, :name, :agency_type, :is_used, :area, :edi_code, :email, :phone, :owner_name, :biz_number
  json.url agency_url(agency, format: :json)
end
