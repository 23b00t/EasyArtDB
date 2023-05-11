class RemoveProvenanceFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :provenance
  end
end
