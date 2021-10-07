json.extract! booking, :id, :name, :contact_number, :email_address, :date, :session, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
