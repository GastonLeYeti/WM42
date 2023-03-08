class City < ApplicationRecord
  belongs_to :map
  has_many :architectures
  has_many :buildings, through: :architectures
  has_many :pnjs, through: :architectures
  validates :name, presence: true
  validates :content, presence: true
end
