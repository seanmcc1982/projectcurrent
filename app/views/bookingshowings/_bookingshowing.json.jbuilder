json.extract! bookingshowing, :id, :showing_id, :filmtitle, :screenname, :seat, :price, :booking_id, :created_at, :updated_at
json.url bookingshowing_url(bookingshowing, format: :json)
