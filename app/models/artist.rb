class Artist < ApplicationRecord
  enum category: { artist: 0, craftsman: 1 }
end
