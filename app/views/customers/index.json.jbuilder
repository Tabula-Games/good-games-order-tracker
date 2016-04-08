json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :credit_limit, :email, :mobile_phone, :home_phone, :address_line1, :address_line2, :suburb, :state, :post_code
  json.url customer_url(customer, format: :json)
end
