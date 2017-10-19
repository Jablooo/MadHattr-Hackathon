json.extract! profile, :id, :avatar_data, :first_name, :last_name, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
