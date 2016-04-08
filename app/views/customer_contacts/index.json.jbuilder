json.array!(@customer_contacts) do |customer_contact|
  json.extract! customer_contact, :id, :customer_id, :contact_method, :date_contacted, :notes
  json.url customer_contact_url(customer_contact, format: :json)
end
