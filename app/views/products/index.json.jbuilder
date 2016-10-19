json.array!(@products) do |product|
  json.extract! product, :id, :name, :code, :caegory_id, :product_type, :size, :box_count, :ta_count, :img_url, :description, :purchase, :purchase_tax, :supply, :supply_tax
  json.url product_url(product, format: :json)
end
