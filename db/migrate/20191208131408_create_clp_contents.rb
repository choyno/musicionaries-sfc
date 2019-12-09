class CreateClpContents < ActiveRecord::Migration[5.2]
  def change
    create_table :clp_contents do |t|
      t.references :clp, foreign_key: true
      t.string :talk_title

      t.timestamps
    end
  end
end
