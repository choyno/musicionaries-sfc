class CreateClpSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :clp_songs do |t|
      t.references :clp, foreign_key: true
      t.references :user, foreign_key: true
      t.string :songs

      t.timestamps
    end
  end
end
