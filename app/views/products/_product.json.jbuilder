json.extract! product, :id, :name, :price_cost, :price_markup, :description, :units, :restock, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
