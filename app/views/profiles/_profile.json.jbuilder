json.extract! profile, :id, :avatar_data, :username, :first_name, :last_name, :address, :postcode, :city, :country, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
