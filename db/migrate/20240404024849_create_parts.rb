class CreateParts < ActiveRecord::Migration[7.0]
  def change
    create_table :parts do |t|
      t.string     :nickname,        null: false
      t.integer    :song_part_id_1,  null: false
      t.integer    :song_part_id_2
      t.references :user, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
