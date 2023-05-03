class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.date :deathday
      t.integer :category

      t.timestamps
    end
  end
end
