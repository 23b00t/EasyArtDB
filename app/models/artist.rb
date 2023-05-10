class Artist < ApplicationRecord
  enum category: { Künstler: 0, Handwerker: 1 }
  has_many :items
  validates :first_name, uniqueness: { scope: :last_name }

  before_destroy :clear_artist_id

  def full_name
    "#{last_name}, #{first_name}"
  end

  private

  def clear_artist_id
    items.update_all(artist_id: nil)
  end
end
