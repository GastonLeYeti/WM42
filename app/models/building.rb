class Building < ApplicationRecord
  has_many :architectures, dependent: :destroy
  has_many :pnjs, through: :architectures, dependent: :destroy
  validates :name, presence: true
end
