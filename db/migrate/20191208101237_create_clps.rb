class CreateClps < ActiveRecord::Migration[5.2]
  def change
    create_table :clps do |t|
      t.references :user, foreign_key: true
      t.string :sfc_chapter
      t.string :theme
      t.string :team_leaders

      t.timestamps
    end
  end
end
