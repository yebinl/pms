json.extract! guest, :id, :name, :phone, :assigned, :created_at, :updated_at
json.url guest_url(guest, format: :json)
