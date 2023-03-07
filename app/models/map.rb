class Map < ApplicationRecord
  belongs_to :party
  has_many :cities
end
