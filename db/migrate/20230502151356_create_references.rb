class CreateReferences < ActiveRecord::Migration[7.0]
  def change
    create_table :references do |t|
      t.string :text
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
