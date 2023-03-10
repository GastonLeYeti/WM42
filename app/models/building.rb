class Building < ApplicationRecord
  has_many :architectures
  has_many :pnjs, through: :architectures
  validates :name, presence: true
end
