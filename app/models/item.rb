class Item < ApplicationRecord
  belongs_to :artist
  belongs_to :manufacturer
  has_many :comments, dependent: :destroy
  has_many :references, dependent: :destroy
  has_many :tasks, dependent: :destroy

  CATEGORIES = ['Halskette', "Armband-/ reif", 'Fingerring', 'Brosche', 'Anhänger', 'Sonstiges']
  # validates :category, inclusion: { in: CATEGORIES }
end
