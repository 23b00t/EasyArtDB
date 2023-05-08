class AddImageToPhotos < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :image, :string
  end
end
