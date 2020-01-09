json.extract! product, :id, :pname, :pprice, :psku, :pimage, :created_at, :updated_at
json.url product_url(product, format: :json)
