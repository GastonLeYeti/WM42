class City < ApplicationRecord
  belongs_to :map
  has_many :architectures, dependent: :destroy
  has_many :buildings, through: :architectures, dependent: :destroy
  has_many :pnjs, through: :architectures, dependent: :destroy
  validates :name, presence: true
  validates :content, presence: true
end
