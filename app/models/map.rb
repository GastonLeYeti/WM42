class Map < ApplicationRecord
  belongs_to :party
  has_many :cities, dependent: :destroy
  has_many :architectures, through: :cities, dependent: :destroy
  has_many :buildings, through: :architectures, dependent: :destroy
  validates :name, presence: true
  validates :content, presence: true
end
