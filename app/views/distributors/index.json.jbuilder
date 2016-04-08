json.array!(@distributors) do |distributor|
  json.extract! distributor, :id, :name, :abn, :email, :phone, :website, :address_line1, :address_line2, :suburb, :state, :post_code
  json.url distributor_url(distributor, format: :json)
end
