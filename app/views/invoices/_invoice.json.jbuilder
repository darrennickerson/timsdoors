json.extract! invoice, :id, :charge, :charge_description, :total, :products_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
