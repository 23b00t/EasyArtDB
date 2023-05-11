class Item < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :manufacturer, optional: true

  has_many :comments, dependent: :destroy
  has_many :references, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :provenances, dependent: :destroy

  has_many_attached :photos, dependent: :destroy

  CATEGORIES = ['Halskette', "Armband-/ reif", 'Fingerring', 'Brosche', 'Anhänger', 'Sonstiges']
end
