class CreateProvenances < ActiveRecord::Migration[7.0]
  def change
    create_table :provenances do |t|
      t.string :text
      t.string :source

      t.timestamps
    end
  end
end
