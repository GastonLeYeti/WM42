class City < ApplicationRecord
  belongs_to :map
  has_many :buildings, through: :architectures
end
