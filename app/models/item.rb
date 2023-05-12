class Item < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :manufacturer, optional: true

  has_many :comments, dependent: :destroy
  has_many :references, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :provenances, dependent: :destroy

  has_many_attached :photos, dependent: :destroy

  CATEGORIES = ['Halskette', "Armband-/ reif", 'Fingerring', 'Brosche', 'Anhänger', 'Sonstiges']

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: %i[titel size material made_at edition category],
                  associated_against: {
                    artist: %i[first_name last_name],
                    manufacturer: %i[name location],
                    comments: :text,
                    references: :text,
                    provenances: %i[text source],
                    tasks: %i[titel content]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
