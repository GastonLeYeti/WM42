class Building < ApplicationRecord
  has_many :architectures
  has_many :pnj, through: :architectures
  validates :name, presence: true
end
