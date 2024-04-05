class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :song_title,null: false
      t.timestamps
    end
  end
end
