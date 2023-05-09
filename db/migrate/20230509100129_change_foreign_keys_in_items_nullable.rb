class ChangeForeignKeysInItemsNullable < ActiveRecord::Migration[7.0]
  def change
    change_column :items, :manufacturer_id, :bigint, null: true
    change_column :items, :artist_id, :bigint, null: true
  end
end
