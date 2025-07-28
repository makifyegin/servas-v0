json.extract! camp, :id, :name, :latitude, :longitude, :elevation, :description, :facilities, :parking_available, :permit_required, :max_stay, :created_at, :updated_at
json.url camp_url(camp, format: :json)
