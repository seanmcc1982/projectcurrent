json.extract! booking, :id, :bookingdate, :status, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
