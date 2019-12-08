json.extract! clp_song, :id, :clp_id, :user_id, :songs, :created_at, :updated_at
json.url clp_song_url(clp_song, format: :json)
