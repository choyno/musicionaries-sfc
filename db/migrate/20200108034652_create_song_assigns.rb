class CreateSongAssigns < ActiveRecord::Migration[5.2]
  def change
    create_table :song_assigns do |t|
      t.references :clp_content, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
