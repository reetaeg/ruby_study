json.array!(@trust_moneys) do |trust_money|
  json.extract! trust_money, :id, :source_type, :agency_id, :etc
  json.url trust_money_url(trust_money, format: :json)
end
