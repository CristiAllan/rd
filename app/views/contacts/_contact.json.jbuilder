json.extract! contact, :id, :email, :name, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
