class Item < ApplicationRecord
  belongs_to :artist
  belongs_to :manufacturer
  has_many :comments, :references, :tasks
end
