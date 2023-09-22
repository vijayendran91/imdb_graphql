class Artist < ApplicationRecord
  validates :nconst, uniqueness: true
end
