class Artist < ApplicationRecord
  enum category: { artist: 0, craftsman: 1 }
  has_many :items
  validates :first_name, uniqueness: { scope: :last_name }
end
