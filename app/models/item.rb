class Item < ApplicationRecord
  belongs_to :artist
  belongs_to :manufacturer
end
