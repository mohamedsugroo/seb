json.extract! contact, :id, :job_id, :phone_number, :first_line, :post_code, :created_at, :updated_at
json.url contact_url(contact, format: :json)
