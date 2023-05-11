class AddItemIdToProvenance < ActiveRecord::Migration[7.0]
  def change
    add_reference :provenances, :item, null: false, foreign_key: true
  end
end
