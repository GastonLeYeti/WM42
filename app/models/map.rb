class Map < ApplicationRecord
  belongs_to :party
  has_many :cities
  has_many :architectures, through: :cities
  has_many :buildings, through: :architectures
end
