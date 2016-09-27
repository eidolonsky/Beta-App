json.extract! player, :id, :name, :goals, :assists, :created_at, :updated_at
json.url player_url(player, format: :json)