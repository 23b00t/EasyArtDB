class ChangeBirthdateAndDeathdateToString < ActiveRecord::Migration[7.0]
  def change
    change_column :artists, :birthday, :string
    change_column :artists, :deathday, :string
  end
end
