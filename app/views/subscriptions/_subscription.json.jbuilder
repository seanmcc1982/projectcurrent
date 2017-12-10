json.extract! subscription, :id, :subscribed, :starttime, :endtime, :price, :user_id, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
