json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :distributor_id, :item, :item_url, :quantity, :price, :deposit, :paid, :status, :availability, :customer_order_on, :ordered_from_distributor_on, :arrived_in_store_on
  json.url order_url(order, format: :json)
end
