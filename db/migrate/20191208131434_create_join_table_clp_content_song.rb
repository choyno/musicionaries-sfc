class CreateJoinTableClpContentSong < ActiveRecord::Migration[5.2]
  def change
    create_join_table :clp_contents, :songs do |t|
      # t.index [:clp_content_id, :song_id]
      # t.index [:song_id, :clp_content_id]
    end
  end
end
