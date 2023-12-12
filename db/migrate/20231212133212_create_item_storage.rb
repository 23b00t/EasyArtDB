class CreateItemStorage < ActiveRecord::Migration[7.0]
  def change
    create_table :item_storages do |t|
      t.integer :item_ids, array: true, default: []
      t.string :url

      t.timestamps
    end
  end
end
