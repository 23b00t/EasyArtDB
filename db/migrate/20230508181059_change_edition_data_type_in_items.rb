class ChangeEditionDataTypeInItems < ActiveRecord::Migration[7.0]
  def change
    change_column :items, :edition, :string
  end
end
