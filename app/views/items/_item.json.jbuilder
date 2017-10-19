json.extract! item, :id, :style, :name, :description, :image_data, :condition, :price, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
