json.extract! rating, :id, :user_id, :recipe_id, :comment, :rate_value, :created_at, :updated_at
json.url api_v1_rating_url(rating, format: :json)
