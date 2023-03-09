json.extract! review, :id, :star_rating, :comment, :user_id, :workout_id, :created_at, :updated_at
json.url review_url(review, format: :json)
