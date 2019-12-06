class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :artist
      t.text :lyrics_and_chords

      t.timestamps
    end
  end
end
