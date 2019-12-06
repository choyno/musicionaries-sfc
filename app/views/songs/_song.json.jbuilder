json.extract! song, :id, :user_id, :title, :artist, :lyrics_and_chords, :created_at, :updated_at
json.url song_url(song, format: :json)
