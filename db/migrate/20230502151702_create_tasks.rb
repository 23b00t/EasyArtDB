class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :titel
      t.text :content
      t.boolean :done
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
