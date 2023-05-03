class Artist < ApplicationRecord
  enum category: { Künstler: 0, Handwerker: 1 }
  has_many :items
  validates :first_name, uniqueness: { scope: :last_name }
end
