json.array!(@games) do |game|
  json.extract! game, :id, :title, :user_id, :opponent_id
  json.url game_url(game, format: :json)
end
