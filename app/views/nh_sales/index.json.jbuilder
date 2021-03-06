json.array!(@nh_sales) do |nh_sale|
  json.extract! nh_sale, :id, :from_code, :from_name, :sale_number, :confirm_date, :delivery_number, :to_code, :to_name, :depart_code, :depart_name, :supply_type, :order_no, :product_code, :product_name, :product_size, :product_tax, :purchase_unit_price, :purchase_amount, :supply_price, :purchase_tax, :purchase_price, :commission, :commission_tax
  json.url nh_sale_url(nh_sale, format: :json)
end
