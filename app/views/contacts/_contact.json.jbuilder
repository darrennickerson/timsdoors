json.extract! contact, :id, :email, :name, :phone, :comment, :created_at, :updated_at
json.url contact_url(contact, format: :json)
