class CreateChords < ActiveRecord::Migration[8.0]
  def change
    create_table :chords do |t|
      t.string :note
      t.integer :row
      t.integer :location
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
