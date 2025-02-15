class CreateSongs < ActiveRecord::Migration[8.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.text :lyrics
      t.references :artist, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :chords_list

      t.timestamps
    end
  end
end
