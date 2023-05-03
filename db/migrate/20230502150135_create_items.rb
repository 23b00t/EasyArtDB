class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :manufacturer, null: false, foreign_key: true
      t.boolean :incomplete
      t.string :titel
      t.string :size
      t.string :material
      t.string :made_at
      t.integer :edition
      t.text :provenance, array: true, default: []

      t.timestamps
    end
  end
end
