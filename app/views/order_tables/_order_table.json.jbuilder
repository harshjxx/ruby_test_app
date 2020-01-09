json.extract! order_table, :id, :quantity, :created_at, :updated_at
json.url order_table_url(order_table, format: :json)
