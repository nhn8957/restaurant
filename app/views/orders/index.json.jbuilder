json.array!(@orders) do |order|
  json.extract! order, :id, :name, :phone_number, :address
  json.url order_url(order, format: :json)
end
